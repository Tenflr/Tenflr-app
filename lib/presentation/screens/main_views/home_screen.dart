import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';

import '../../../application/lock_screen_bloc/lock_screen_bloc.dart';
import '../../../application/main_views_bloc/main_views_bloc.dart';
import '../../../application/trusted_funds_bloc/trusted_funds_bloc.dart';
import '../../../domain/core/settings.dart';
import '../../../domain/user/user.dart';
import '../../../injection.dart';
import '../../widgets/tf_drawer.dart';
import '../lock_screen.dart';
import 'home_screen_body.dart';

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class HomeScreen extends StatefulWidget {
  final User user;

  const HomeScreen({@required this.user});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with WidgetsBindingObserver {
  final MySettings _settings = getIt<MySettings>();

  @override
  void initState() {
    super.initState();
    // context.bloc<DeviceIdWatcherBloc>()
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.inactive ||
        state == AppLifecycleState.paused ||
        state == AppLifecycleState.detached) {
      context.bloc<LockScreenBloc>().add(const LockScreenEvent.lock());
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider(
        //   create: (context) => getIt<TransactionStatsBloc>()
        //     ..add(const TransactionStatsEvent.watchTransactionStatistics()),
        // ),
        BlocProvider(create: (context) => getIt<TrustedFundsBloc>()),
        BlocProvider(create: (context) => getIt<MainViewsBloc>()),
      ],
      child: WillPopScope(
        onWillPop: () async {
          return SystemChannels.platform.invokeMethod('SystemNavigator.pop');
        },
        child: Scaffold(
          resizeToAvoidBottomPadding: false,
          key: _scaffoldKey,
          body: BlocBuilder<LockScreenBloc, LockScreenState>(
              buildWhen: (p, c) =>
                  p.isLocked != c.isLocked && _settings.isLockEnabled,
              builder: (context, state) {
            return !state.isLocked
                ? Provider.value(
                    value: widget.user,
                    child: Stack(
                      children: const [
                        TfDrawer(),
                        HomeScreenBody(),
                      ],
                    ),
                  )
                : const LockScreen();
          }),
        ),
      ),
    );
  }
}
