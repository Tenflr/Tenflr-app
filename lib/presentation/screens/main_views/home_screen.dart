import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:tenflrpay/application/main_views_bloc/main_views_bloc.dart';
import 'package:tenflrpay/domain/user/user.dart';
import 'package:tenflrpay/presentation/widgets/tf_drawer.dart';

import '../../../injection.dart';
import 'home_screen_body.dart';

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class HomeScreen extends HookWidget {
  final User user;

  const HomeScreen({@required this.user});
  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        // BlocProvider(
        //   create: (context) => getIt<TransactionStatsBloc>()
        //     ..add(const TransactionStatsEvent.watchTransactionStatistics()),
        // ),
        BlocProvider(create: (context) => getIt<MainViewsBloc>()),
      ],
          child: WillPopScope(
        onWillPop: () async {
          return SystemChannels.platform.invokeMethod('SystemNavigator.pop');
        },
        child: Scaffold(
          resizeToAvoidBottomPadding: false,
          key: _scaffoldKey,
          body: Provider.value(
            value: user,
            child: Stack(
              children: [
                const TfDrawer(),
                const HomeScreenBody(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
