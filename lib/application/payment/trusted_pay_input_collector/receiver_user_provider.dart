import 'package:tenflrpay/domain/user/user.dart';
import 'package:rxdart/rxdart.dart';

class ReveiverUserProvider {
  final BehaviorSubject _receiverSubject = BehaviorSubject<User>();
  BehaviorSubject<User> get getReceiver => _receiverSubject.stream as BehaviorSubject<User>;
  BehaviorSubject<User> get setReceiver => _receiverSubject.sink as  BehaviorSubject<User>;

  @override
  void dispose() {
    _receiverSubject.close();
  }
}
