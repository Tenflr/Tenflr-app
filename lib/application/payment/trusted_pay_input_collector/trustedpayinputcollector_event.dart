part of 'trustedpayinputcollector_bloc.dart';

@freezed
@immutable
abstract class TrustedPayInputCollectorEvent
    with _$TrustedPayInputCollectorEvent {
  const factory TrustedPayInputCollectorEvent.amountChanged(
      {@required MoneyAmount amount}) = _AmountChanged;
  const factory TrustedPayInputCollectorEvent.receiverChanged(
      {@required User reciever}) = _ReceiverChanged;
  const factory TrustedPayInputCollectorEvent.unlockDateChanged(
      {@required ValidDate unlockDate}) = _UnlockDateChanged;
  const factory TrustedPayInputCollectorEvent.receiverSerchTermChanged(
      {@required String searchTerm}) = _ReceiverSearchTermChanged;
  const factory TrustedPayInputCollectorEvent.submitted() = _Submitted;
  const factory TrustedPayInputCollectorEvent.initialized(User payer) =
      _Initialized;
  const factory TrustedPayInputCollectorEvent.amountToCreditChanged(
      {@required MoneyAmount amount}) = _AmountToCreditChanged;
  const factory TrustedPayInputCollectorEvent.creditTenflrPayWithMTN() =
      _CreditTrustedPay;
  const factory TrustedPayInputCollectorEvent.withdrawTenflrPayToMTN({ValidPhoneNumber phoneNumber}) =
      _WithdrawTrustedPay;
       const factory TrustedPayInputCollectorEvent.creditTenflrPayWithOrange() =
      _CreditTrustedPayWithOrange;
       const factory TrustedPayInputCollectorEvent.withdrawTenflrPayToOrange({ValidPhoneNumber phoneNumber}) =
      _WithdrawTrustedPayToOrange;
  const factory TrustedPayInputCollectorEvent.searchUser(String userQuery) =
      _UserSearch;
}
