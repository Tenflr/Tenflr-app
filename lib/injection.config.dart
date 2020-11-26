// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:device_info/device_info.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:package_info/package_info.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'application/auth/auth_bloc/authentication_bloc.dart';
import 'application/budget/budget_actor_bloc/budget_actor_bloc.dart';
import 'application/budget/budget_input_collector/budgetinputcollector_bloc.dart';
import 'application/budget/budget_list_bloc/budgetlist_bloc.dart';
import 'infrastructure/budget/budget_repository.dart';
import 'presentation/screens/main_views/quickpay/widgets/cash_logic.dart';
import 'application/connectivity_and_time_bloc/connectivity_and_time_bloc.dart';
import 'application/curren_theme_mode_bloc/curren_theme_mode_bloc.dart';
import 'infrastructure/repositories/database_repository_facade.dart';
import 'infrastructure/device_id/device_id_repository.dart';
import 'application/device_id_watcher/device_id_watcher_bloc.dart';
import 'infrastructure/auth/firebase_auth_facade.dart';
import 'infrastructure/core/firebase_injectable_module.dart';
import 'domain/auth/i_auth_facade.dart';
import 'domain/budget/i_budget_repository.dart';
import 'domain/database/i_database_repository_facade.dart';
import 'domain/device_id/i_device_id_facade.dart';
import 'domain/payment/i_payment_repository.dart';
import 'domain/quick_payment/i_quick_payment.dart';
import 'domain/saving/i_saving_repository.dart';
import 'domain/user_settings/i_settings_facade.dart';
import 'domain/transaction_statistics/i_transaction_stats_repository.dart';
import 'application/lock_screen_bloc/lock_screen_bloc.dart';
import 'application/auth/login_bloc/login_bloc.dart';
import 'application/main_views_bloc/main_views_bloc.dart';
import 'infrastructure/repositories/momo_api_service.dart';
import 'domain/core/settings.dart';
import 'application/payment/payment_actor_bloc/payment_actor_bloc.dart';
import 'infrastructure/payment/payment_repository.dart';
import 'application/auth/phone_init_bloc/phone_init_bloc.dart';
import 'infrastructure/managers/phone_init_manager.dart';
import 'application/quick_payment/quick_payment_bloc/quick_payment_bloc.dart';
import 'infrastructure/quick_payment/quick_payment_repository.dart';
import 'application/quick_payment/quick_payment_watcher_bloc/quick_payment_watcher_bloc.dart';
import 'application/receiver_user_provider.dart';
import 'application/saving/savings_actor_bloc/savings_actor_bloc.dart';
import 'application/saving/savings_input_collector/savingsinputcollector_bloc.dart';
import 'application/saving/savings_list_bloc/savingslist_bloc.dart';
import 'infrastructure/saving/savings_repository.dart';
import 'application/settings_bloc/settings_bloc.dart';
import 'application/payment/transaction_list_bloc/transaction_list_bloc.dart';
import 'application/transaction_stats_bloc/transaction_stats_bloc.dart';
import 'infrastructure/transaction_statistics/transaction_stats_repository.dart';
import 'application/trusted_funds_bloc/trusted_funds_bloc.dart';
import 'application/payment/trusted_pay_input_collector/trustedpayinputcollector_bloc.dart';
import 'infrastructure/managers/trusted_pay_door_manager.dart';
import 'application/auth/user_detail_bloc/user_detail_bloc.dart';
import 'application/auth/user_settings_bloc/user_settings_bloc.dart';
import 'infrastructure/user_settings/user_settings_repository.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

Future<GetIt> $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) async {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.factory<Calculator>(() => Calculator());
  gh.lazySingleton<Crashlytics>(
      () => firebaseInjectableModule.recorerdFlutterError);
  gh.factory<CurrentThemeModeBloc>(() => CurrentThemeModeBloc());
  gh.lazySingleton<DataConnectionChecker>(
      () => firebaseInjectableModule.connectionChecker);
  gh.lazySingleton<DeviceInfoPlugin>(
      () => firebaseInjectableModule.deviceInfoPlugin);
  gh.lazySingleton<FirebaseAnalytics>(() => firebaseInjectableModule.analytics);
  gh.lazySingleton<FirebaseAnalyticsObserver>(
      () => firebaseInjectableModule.analyticsObserver);
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<Firestore>(() => firebaseInjectableModule.firestore);
  gh.lazySingleton<GoogleSignIn>(() => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<IDeviceIDFacade>(() => DeviceIdRepository(
        get<Firestore>(),
        get<FirebaseAuth>(),
        get<DeviceInfoPlugin>(),
      ));
  gh.lazySingleton<ISettingsFacade>(
      () => UserSettingsRepository(get<Firestore>()));
  gh.lazySingleton<ITransactionStatisticRepository>(
      () => TransactionStatsRepository(get<Firestore>()));
  gh.lazySingleton<MomoApiService>(
      () => firebaseInjectableModule.momoApiService);
  final packageInfo = await firebaseInjectableModule.packageInfo;
  gh.factory<PackageInfo>(() => packageInfo);
  gh.factory<PhoneInitBloc>(() => PhoneInitBloc());
  gh.factory<PhoneInitManager>(() => PhoneInitManager());
  gh.factory<ReceiverUserProvider>(() => ReceiverUserProvider());
  final remoteConfig = await firebaseInjectableModule.remoteConfig;
  gh.factory<RemoteConfig>(() => remoteConfig);
  final sharedPreferences = await firebaseInjectableModule.sharedPreference;
  gh.factory<SharedPreferences>(() => sharedPreferences);
  gh.factory<TransactionStatsBloc>(
      () => TransactionStatsBloc(get<ITransactionStatisticRepository>()));
  gh.factory<TrustedVaultDoorManager>(() => TrustedVaultDoorManager());
  gh.factory<UserSettingsBloc>(() => UserSettingsBloc());
  gh.factory<ConnectivityAndTimeBloc>(
      () => ConnectivityAndTimeBloc(get<DataConnectionChecker>()));
  gh.factory<DeviceIdWatcherBloc>(
      () => DeviceIdWatcherBloc(get<IDeviceIDFacade>()));
  gh.lazySingleton<MySettings>(() => MySettings(get<SharedPreferences>()));
  gh.factory<SettingsBloc>(
      () => SettingsBloc(get<MySettings>(), get<ISettingsFacade>()));
  gh.lazySingleton<IAuthFacade>(() => FirebaseAuthFacade(
        get<FirebaseAuth>(),
        get<GoogleSignIn>(),
        get<Firestore>(),
        get<MySettings>(),
      ));
  gh.lazySingleton<IDatabaseRepositoryFacade>(() => DatabaseRepositoryFacade(
        get<Firestore>(),
        get<FirebaseAuth>(),
        get<IDeviceIDFacade>(),
        get<MySettings>(),
      ));
  gh.lazySingleton<IPaymentRepository>(() => PaymentRepository(
        get<Firestore>(),
        get<MomoApiService>(),
        get<MySettings>(),
        get<IAuthFacade>(),
      ));
  gh.lazySingleton<IQuickPaymentRepository>(() => QuickPaymentRepository(
        get<Firestore>(),
        get<IPaymentRepository>(),
        get<MySettings>(),
        get<MomoApiService>(),
        get<IAuthFacade>(),
      ));
  gh.lazySingleton<ISavingsRepository>(() => SavingsRepository(
        get<Firestore>(),
        get<MySettings>(),
        get<MomoApiService>(),
        get<IPaymentRepository>(),
        get<IAuthFacade>(),
      ));
  gh.factory<LockScreenBloc>(
      () => LockScreenBloc(get<TrustedVaultDoorManager>(), get<MySettings>()));
  gh.factory<LoginBloc>(() => LoginBloc(
        get<IDatabaseRepositoryFacade>(),
        get<IAuthFacade>(),
        get<IDeviceIDFacade>(),
        get<ISettingsFacade>(),
        get<MySettings>(),
      ));
  gh.factory<MainViewsBloc>(
      () => MainViewsBloc(get<TrustedVaultDoorManager>(), get<MySettings>()));
  gh.factory<PaymentActorBloc>(
      () => PaymentActorBloc(get<IPaymentRepository>()));
  gh.factory<QuickPaymentBloc>(() => QuickPaymentBloc(
        get<RemoteConfig>(),
        get<PackageInfo>(),
        get<IQuickPaymentRepository>(),
      ));
  gh.factory<QuickPaymentWatcherBloc>(
      () => QuickPaymentWatcherBloc(get<IQuickPaymentRepository>()));
  gh.factory<SavingsActorBloc>(
      () => SavingsActorBloc(get<ISavingsRepository>()));
  gh.factory<SavingsInputCollectorBloc>(
      () => SavingsInputCollectorBloc(get<ISavingsRepository>()));
  gh.factory<SavingsListBloc>(
      () => SavingsListBloc(savingsRepository: get<ISavingsRepository>()));
  gh.factory<TransactionListBloc>(
      () => TransactionListBloc(get<IPaymentRepository>()));
  gh.factory<TrustedFundsBloc>(
      () => TrustedFundsBloc(get<IPaymentRepository>()));
  gh.factory<TrustedPayInputCollectorBloc>(
      () => TrustedPayInputCollectorBloc(get<IPaymentRepository>()));
  gh.factory<UserDetailBloc>(() => UserDetailBloc(
        deviceIDFacade: get<IDeviceIDFacade>(),
        databaseRepositoryFacade: get<IDatabaseRepositoryFacade>(),
        dataService: get<IAuthFacade>(),
      ));
  gh.factory<AuthenticationBloc>(() => AuthenticationBloc(
        get<IAuthFacade>(),
        get<MySettings>(),
        get<IDeviceIDFacade>(),
        get<ISettingsFacade>(),
      ));
  gh.lazySingleton<IBudgetRepository>(() => BudgetRepository(
        get<Firestore>(),
        get<MySettings>(),
        get<MomoApiService>(),
        get<IPaymentRepository>(),
        get<IAuthFacade>(),
      ));
  gh.factory<BudgetActorBloc>(() => BudgetActorBloc(get<IBudgetRepository>()));
  gh.factory<BudgetInputCollectorBloc>(
      () => BudgetInputCollectorBloc(get<IBudgetRepository>()));
  gh.factory<BudgetListBloc>(
      () => BudgetListBloc(budgetRepository: get<IBudgetRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
