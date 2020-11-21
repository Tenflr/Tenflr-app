import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ntp/ntp.dart';

import '../../domain/core/constant_list.dart';

part 'connectivity_and_time_bloc.freezed.dart';
part 'connectivity_and_time_event.dart';
part 'connectivity_and_time_state.dart';

@injectable
class ConnectivityAndTimeBloc
    extends Bloc<ConnectivityAndTimeEvent, ConnectivityAndTimeState> {
  final DataConnectionChecker _connectionChecker;

  ConnectivityAndTimeBloc(this._connectionChecker)
      : super(ConnectivityAndTimeState.initial());

  // @override
  // Stream<Transition<ConnectivityAndTimeEvent, ConnectivityAndTimeState>>
  //     transformEvents(
  //   Stream<ConnectivityAndTimeEvent> events,
  //   TransitionFunction<ConnectivityAndTimeEvent, ConnectivityAndTimeState>
  //       transitionFn,
  // ) {
  //   final nonDebounceStream = events.where((event) {
  //     return event is! _InternetUP &&
  //         event is! _InternetDown &&
  //         event is! _InSync;
  //   });
  //   final debounceStream = events.where((event) {
  //     return event is _CheckInternet;
  //   }).debounceTime(const Duration(milliseconds: 10));
  //   return super.transformEvents(
  //     nonDebounceStream.mergeWith([debounceStream]),
  //     transitionFn,
  //   );
  // }

  int ntpOfSet;
  bool isInit;
  DateTime currentTime;
  DataConnectionStatus _status;
  StreamSubscription internetSubscription;
  StreamSubscription timeSubscription;
  @override
  Stream<ConnectivityAndTimeState> mapEventToState(
      ConnectivityAndTimeEvent gEvent) async* {
    yield* gEvent.map(
      checkInternet: (e) async* {
        internetSubscription =
            _connectionChecker.onStatusChange.listen((status) {
          _status = status;
          status == DataConnectionStatus.disconnected
              ? add(const ConnectivityAndTimeEvent.internetDown())
              : add(const ConnectivityAndTimeEvent.internetUp());
        });
      },
      checkSynchronizedTime: (e) async* {
        // yield* Stream.fromFuture(getState());

        // Timer.periodic(const Duration(seconds: 15), (timer) async {
        ntpOfSet = _status == DataConnectionStatus.connected
            ? await NTP.getNtpOffset(lookUpAddress: 'time.google.com')
            : 0;

        print('''

    ntpOffset is $ntpOfSet

      ''');

        if (ntpOfSet.abs() > maxTimeOffset) {
          // in milliseconds
          add(const ConnectivityAndTimeEvent.outOfSync());
        } else {
          add(const ConnectivityAndTimeEvent.inSync());
        }
      },
      inSync: (e) async* {
        yield state.copyWith(isSyncedTime: true);
      },
      outOfSync: (e) async* {
        yield state.copyWith(isSyncedTime: false);
      },
      internetDown: (e) async* {
        yield state.copyWith(isConnected: false);
      },
      internetUp: (e) async* {
        yield state.copyWith(isConnected: true);
      },
    );

    // @override
    // void close() {
    //   internetSubscription?.cancel();
    //   timeSubscription?.cancel();
    //   super.close();
    // }
  }

  Future<ConnectivityAndTimeState> getState() async {
    ntpOfSet = await NTP.getNtpOffset(lookUpAddress: 'time.google.com');

    print('''

    ntpOffset is $ntpOfSet

      ''');

    return ntpOfSet.abs() > 5000 // in milliseconds
        ? state.copyWith(isSyncedTime: false)
        : state.copyWith(isSyncedTime: true);
  }
}
