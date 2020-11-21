import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../infrastructure/managers/phone_init_manager.dart';
import '../../../injection.dart';

part 'phone_init_bloc.freezed.dart';
part 'phone_init_event.dart';
part 'phone_init_state.dart';

@injectable
class PhoneInitBloc extends Bloc<PhoneInitEvent, PhoneInitState> {

  StreamSubscription subscription;
  PhoneInitBloc(
  ): super(const PhoneInitState.loading());

  PhoneInitManager phoneInitManager = getIt<PhoneInitManager>();
  static String locale = 'CM';
  @override
  Stream<PhoneInitState> mapEventToState(
    PhoneInitEvent event,
  ) async* {
    yield* event.map(initComplete: (e) async* {
      yield const PhoneInitState.loading();

      final info = await phoneInitManager.info();
      yield PhoneInitState.completed(info: info);
    });
  }
}
