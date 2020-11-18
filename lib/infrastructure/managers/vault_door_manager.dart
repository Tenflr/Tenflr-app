import 'package:rxdart/subjects.dart';

class VaultDoorManager {
  static String myPin = '0000';
  final Function notifyParent;
  final Function fingerSensor;
  final Function notifyPin;

  VaultDoorManager({this.fingerSensor, this.notifyParent, this.notifyPin});

// declare stream
  BehaviorSubject _unFocus = BehaviorSubject<bool>();
  PublishSubject _validPin = PublishSubject<bool>();

// getter
  Stream<bool> get pinFocus$ => _unFocus.value as BehaviorSubject<bool>;
  Stream<bool> get validPin$ => _validPin.stream as PublishSubject<bool>;

// setter
  Function(bool) get inChangeFocus => _unFocus.sink.add;
  Function(bool) get _inChangeValidPin => _validPin.sink.add;

  static bool toogle = true;
  void setTimeOut() {
    Stream<void>.periodic(const Duration(seconds: 5)).listen((r) {
      toogle = !toogle;
      inChangeFocus(toogle);
    });
  }

  void validatePin(String pin) {
    if (pin == myPin) {
      _inChangeValidPin(true);
    }
    _inChangeValidPin(false);
  }

  @override
  Future<void> dispose() async {
    _unFocus.close();
    _validPin.close();
  }
}
