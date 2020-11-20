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
  const factory TrustedPayInputCollectorEvent.creditTrustedPay() =
      _CreditTrustedPay;
  const factory TrustedPayInputCollectorEvent.searchUser(String userQuery) =
      _UserSearch;
}
