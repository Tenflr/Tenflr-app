import 'package:tenflrpay/domain/core/valid_objects.dart';
import 'package:tenflrpay/domain/core/value_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quick_payment_token.freezed.dart';

@freezed
@immutable
abstract class QuickPaymentToken implements _$QuickPaymentToken {
  const QuickPaymentToken._();

  const factory QuickPaymentToken({
    @required final UniqueId requesterId,
    @required final ValidDate tokenValidUntil,
    @required final ValidNames requesterName,
    @required final ValidPhoneNumber requesterNumber,
    @required final String requesterPhotoUrl,
    @required final MoneyAmount amount,
  }) = _QuickPaymentToken;

  factory QuickPaymentToken.empty() {
    final DateTime today = DateTime.now();
    return QuickPaymentToken(
      amount: MoneyAmount(0),
      tokenValidUntil: ValidDate(DateTime(
          today.year, today.month, today.day, today.hour, today.minute + 2)),
      requesterId: UniqueId(),
      requesterName: ValidNames('xyz'),
      requesterNumber: ValidPhoneNumber(''),
      requesterPhotoUrl: '',
    );
  }
}
