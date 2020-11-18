part of 'payment_actor_bloc.dart';

@freezed
abstract class PaymentActorEvent with _$PaymentActorEvent {
  //automatic callback
  const factory PaymentActorEvent.cash(Payment payment) = _Cash;
  // hide sent or received
  const factory PaymentActorEvent.hide( Payment payment) = _Hide;
  // unlock sent 
  const factory PaymentActorEvent.unlockSent(Payment payment) =  _UnlockSentPayment;
  // freeze sent
  const factory PaymentActorEvent.freezeSent(Payment payment) =  _FreezeSentPayment;
  const factory PaymentActorEvent.deleteCashed(Payment payment) =  _DeleteSentPayment;
  const factory PaymentActorEvent.requestUnlockOfReceived(Payment payment) =  _RequestUnlockOfReceivedPayment;
  const factory PaymentActorEvent.returnPayment(Payment payment) =  _ReturnPayment;
  const factory PaymentActorEvent.upVoteUser(Payment payment) =  _UpVoteUser;
  const factory PaymentActorEvent.downVoteUser(Payment payment) =  _DownVoteUser;
}