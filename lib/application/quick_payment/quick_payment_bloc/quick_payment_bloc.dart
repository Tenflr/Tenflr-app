import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:encrypt/encrypt.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart' hide Key;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info/package_info.dart';

import '../../../domain/core/constant_list.dart';
import '../../../domain/core/valid_objects.dart';
import '../../../domain/core/value_object.dart';
import '../../../domain/logs/logs.dart';
import '../../../domain/quick_payment/i_quick_payment.dart';
import '../../../domain/quick_payment/quick_payment.dart';
import '../../../domain/quick_payment/quick_payment_failure.dart';
import '../../../domain/quick_payment_token/quick_payment_token.dart';
import '../../../domain/user/user.dart';
import '../../../infrastructure/quick_payment_token/quick_payment_token_dtos.dart';

part 'quick_payment_bloc.freezed.dart';
part 'quick_payment_event.dart';
part 'quick_payment_state.dart';

@injectable
class QuickPaymentBloc extends Bloc<QuickPaymentEvent, QuickPaymentState> {
  final IQuickPaymentRepository _paymentRepository;
  final RemoteConfig remoteConfig;
  final PackageInfo packageInfo;
  QuickPaymentBloc(this.remoteConfig, this.packageInfo, this._paymentRepository)
      : super(QuickPaymentState.empty());

  static String encryptionKey;
  static String iv_String;
  @override
  Stream<QuickPaymentState> mapEventToState(QuickPaymentEvent gEvent) async* {
    final RemoteConfig _config = setupRemoteConfig(remoteConfig, packageInfo);
    final DateTime today = DateTime.now();
    yield* gEvent.map(initialize: (e) async* {
      yield state.copyWith(
        encryptedToken: '',
        saveFailureOrSuccessOption: none(),
        shouldValidatePayment: false,
        amountToRequest: MoneyAmount(0),
        payment: state.payment.copyWith(
          id: UniqueId(),
          payerId: e.requester.id,
          requesterId: UniqueId(),
          pTel: e.requester.phoneNumber,
          amount: MoneyAmount(0),
        ),
        token: state.token.copyWith(
          requesterId: e.requester.id,
          requesterName: e.requester.displayName,
          requesterNumber: e.requester.phoneNumber,
          requesterPhotoUrl: e.requester.photoUrl,
          tokenValidUntil: ValidDate(DateTime(today.year, today.month,
              today.day, today.hour, DateTime.now().minute + 2)),
          amount: MoneyAmount(0),
        ),
      );
    }, requestPayment: (e) async* {
      Encrypted encrypted;
      QuickPaymentToken realToken;
      try {
        encryptionKey = _config.getString("quick_payment_key");
        iv_String = _config.getString("iv_string");

        debugPrint('''
      
      The encryption Key is :: $encryptionKey
      The Iv is:: $iv_String
      
      
      ''');

        final key = Key.fromUtf8(encryptionKey);
        final encrypter = Encrypter(AES(key, mode: AESMode.ctr));
        realToken = state.token.copyWith(
          amount: e.amount,
          tokenValidUntil: ValidDate(DateTime(today.year, today.month,
              today.day, today.hour, DateTime.now().minute + 2)),
        );
        final String encodeTokenString =
            json.encode(QuickPaymentTokenDto.fromDmain(realToken).toJson());

        encrypted = encrypter.encrypt(
          encodeTokenString,
          iv: IV.fromUtf8(iv_String),
        );
      } catch (e) {
        debugPrint('''
      
     Error Encoding QR code  :: $e
      
      
      ''');

        yield state.copyWith(
          saveFailureOrSuccessOption:
              some(left(const QuickPaymentFailure.errorGeneratingQRCode())),
        );
      }

      yield state.copyWith(
          encryptedToken: encrypted.base64,
          amountToRequest: e.amount,
          token: realToken,
          shouldValidatePayment: false,
          saveFailureOrSuccessOption: none());
    }, tokenScanned: (e) async* {
      if (e.scannedToken != null && e.scannedToken.isNotEmpty) {
        QuickPaymentToken receivedToken;
        try {
          encryptionKey = await _config.getString("quick_payment_key");
          iv_String = _config.getString("iv_string");

          debugPrint('''
      
      The encryption Key is :: $encryptionKey
      The Iv is:: $iv_String
      
      
      ''');
          final key = Key.fromUtf8(encryptionKey);
          final encrypter = Encrypter(AES(key, mode: AESMode.ctr));
          final decreptedToken = encrypter.decrypt64(
            e.scannedToken,
            iv: IV.fromUtf8(iv_String),
          );

          final Map<String, dynamic> decodeTokenString =
              json.decode(decreptedToken) as Map<String, dynamic>;

          receivedToken =
              QuickPaymentTokenDto.fromJson(decodeTokenString).toDomain();
          debugPrint('''
      
     The decrepted token is  :: $decodeTokenString
      
      
      ''');
        } catch (e) {
          debugPrint('''
      
     Error Decrepting QR code  :: $e
      
      
      ''');
          yield state.copyWith(
            saveFailureOrSuccessOption:
                some(left(const QuickPaymentFailure.errorScanningQRCode())),
          );
        }
        if (receivedToken.requesterId.getOrCrash() ==
            state.payment.payerId.getOrCrash()) {
          final quickPaymentToken = QuickPaymentToken.empty();
          yield state.copyWith(
              encryptedToken: '',
              amountToRequest: MoneyAmount(0),
              token: quickPaymentToken,
              shouldValidatePayment: false,
              saveFailureOrSuccessOption:
                  some(left(const QuickPaymentFailure.youCantPayYourSelf())));
        } else if (receivedToken.tokenValidUntil
                .getOrCrash()
                .difference(today)
                .inSeconds <=
            0) {
          yield state.copyWith(
              encryptedToken: '',
              amountToRequest: MoneyAmount(0),
              token: QuickPaymentToken.empty(),
              shouldValidatePayment: false,
              saveFailureOrSuccessOption:
                  some(left(const QuickPaymentFailure.tokenExpired())));
        } else {
          yield state.copyWith(
              payment: state.payment.copyWith(
                id: UniqueId(),
                requesterId: receivedToken.requesterId,
                amount: receivedToken.amount,
                rTel: receivedToken.requesterNumber,
              ),
              token: state.token.copyWith(
                requesterId: receivedToken.requesterId,
                requesterName: receivedToken.requesterName,
                requesterNumber: receivedToken.requesterNumber,
                requesterPhotoUrl: receivedToken.requesterPhotoUrl,
              ),
              encryptedToken: '',
              shouldValidatePayment: true,
              saveFailureOrSuccessOption: none());
        }
      }
    }, resetToken: (e) async* {
      // yield state.copyWith();
    }, validatePayment: (e) async* {
      final Logs log = generateLogs(state.payment);
      final Either<QuickPaymentFailure, Unit> failureOrPayment =
          await _paymentRepository.quickPayment(state.payment, log);

      yield state.copyWith(
        saveFailureOrSuccessOption: some(failureOrPayment),
        encryptedToken: '',
        shouldValidatePayment: false,
        payment: state.payment.copyWith(
          id: UniqueId(),
          payerId: e.requester.id,
          requesterId: UniqueId(),
          pTel: e.requester.phoneNumber,
          amount: MoneyAmount(0),
        ),
        token: state.token.copyWith(
          requesterId: e.requester.id,
          requesterName: e.requester.displayName,
          requesterNumber: e.requester.phoneNumber,
          requesterPhotoUrl: e.requester.photoUrl,
          tokenValidUntil: ValidDate(DateTime(today.year, today.month,
              today.day, today.hour, DateTime.now().minute + 2)),
          amount: MoneyAmount(0),
        ),
      );
    }, autoCash: (e) async* {
      final Either<QuickPaymentFailure, Unit> failureOrCashed =
          await _paymentRepository.autoCashPayment(e.payment);

      yield state.copyWith(
        saveFailureOrSuccessOption: some(failureOrCashed),
      );
    });
  }
}

RemoteConfig setupRemoteConfig(
    RemoteConfig remoteConfig, PackageInfo packageInfo) {
  // Enable developer mode to relax fetch throttling
  remoteConfig.setConfigSettings(
      RemoteConfigSettings(debugMode: kReleaseMode ? false : true));
  remoteConfig.fetch(
      expiration: kReleaseMode ? const Duration(hours: 12) : const Duration());
  remoteConfig.activateFetched();
  // remoteConfig.setDefaults(<String, dynamic>{
  //   'welcome': 'default welcome',
  //   'hello': 'default hello',
  // });
  return remoteConfig;
}

Logs generateLogs(QuickPayment payment) {
  return Logs(
    amount: payment.amount,
    payer: payment.payerId,
    receiver: payment.requesterId,
    type: TransactionType(kTransactionType.qp.val),
    operation: '-',
    createdAt: DateTime.now(),
  );
}
