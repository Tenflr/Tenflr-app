import 'package:tenflrpay/domain/user/user.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@injectable
class ReceiverUserProvider {
  final BehaviorSubject _receiverSubject = BehaviorSubject<User>();
  BehaviorSubject<User> get getReceiver => _receiverSubject.stream as BehaviorSubject<User>;
  void  setReceiver(User user) => _receiverSubject.sink.add(user)  ;

  @override
  void dispose() {
    _receiverSubject.close();
  }
}
