import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/valid_objects.dart';
import '../../domain/core/value_object.dart';
import '../../domain/quick_payment_token/quick_payment_token.dart';

part 'quick_payment_token_dtos.freezed.dart';
part 'quick_payment_token_dtos.g.dart';

@freezed
@immutable
abstract class QuickPaymentTokenDto implements _$QuickPaymentTokenDto {
  const QuickPaymentTokenDto._();

  const factory QuickPaymentTokenDto({
    @required final String requesterId,
    @required final DateTime tokenValidUntil,
    @required final String requesterName,
    @required final String requesterNumber,
        @required final String requesterPhotoUrl,

    @required final double amount,
  }) = _QuickPaymentTokenDto;

  factory QuickPaymentTokenDto.fromDmain(QuickPaymentToken quickPaymentToken) =>
      QuickPaymentTokenDto(
        requesterId: quickPaymentToken.requesterId.getOrCrash(),
        tokenValidUntil: quickPaymentToken.tokenValidUntil.getOrCrash(),
        requesterName: quickPaymentToken.requesterName.getOrCrash(),
        requesterNumber: quickPaymentToken.requesterNumber.getOrCrash(),
        requesterPhotoUrl: quickPaymentToken.requesterPhotoUrl,
        amount: quickPaymentToken.amount.getOrCrash(),
      );

  QuickPaymentToken toDomain() => QuickPaymentToken(
        requesterId: UniqueId.fromUniqueString(requesterId),
        tokenValidUntil: ValidDate(tokenValidUntil),
        requesterName: ValidNames(requesterName),
        requesterNumber: ValidPhoneNumber(requesterNumber),
        amount: MoneyAmount(amount),
        requesterPhotoUrl: requesterPhotoUrl,
      );

  factory QuickPaymentTokenDto.fromJson(Map<String, dynamic> json) =>
      _$QuickPaymentTokenDtoFromJson(json);
}
