
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../application/main_views_bloc/main_views_bloc.dart';
import '../core/assets/images.dart';
import '../core/icons/TfIcons_icons.dart';

class NavBar extends HookWidget {
  const NavBar();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final _currentIndex = useState(0);
    final Widget _child = Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Divider(
            height: 0,
            thickness: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  splashRadius: 0.1,
                  icon: _currentIndex.value != 0
                      ? const Icon(TfIcons.home)
                      : const Icon(TfIcons.home_filled),
                  onPressed: () {
                    _currentIndex.value = 0;
                    context
                        .bloc<MainViewsBloc>()
                        .add(const MainViewsEvent.homePage());
                  }),
              IconButton(
                  splashRadius: 0.1,
                  icon: _currentIndex.value != 1
                      ? const Icon(TfIcons.bag)
                      : Image.asset(TfImages.icon_bag_filled),
                  onPressed: () {
                    _currentIndex.value = 1;
                    context
                        .bloc<MainViewsBloc>()
                        .add(const MainViewsEvent.savingsPage());
                  }),
              IconButton(
                splashRadius: 0.1,
                icon: _currentIndex.value != 2
                    ? const Icon(TfIcons.quick_pay)
                    : Image.asset(TfImages.icon_quick_pay_filled),
                onPressed: () {
                  _currentIndex.value = 2;
                  context
                      .bloc<MainViewsBloc>()
                      .add(const MainViewsEvent.quickPaymentOverView());
                },
              ),
              IconButton(
                  splashRadius: 0.1,
                  icon: _currentIndex.value != 3
                      // :  Image.asset(TfImages.icon_budget),
                      ? const Icon(TfIcons.budget)
                      : Image.asset(TfImages.icon_budget_filled),
                  onPressed: () {
                    _currentIndex.value = 3;

                    context
                        .bloc<MainViewsBloc>()
                        .add(const MainViewsEvent.budgetPage());
                  }),
              IconButton(
                splashRadius: 0.1,
                icon: _currentIndex.value != 4
                    ? const Icon(TfIcons.trusted_pay)
                    : Image.asset(TfImages.icon_tp_filled),
                onPressed: () {
                  _currentIndex.value = 4;
                  context
                      .bloc<MainViewsBloc>()
                      .add(const MainViewsEvent.trustedPayPage(pin: ''));
                },
              ),
            ],
          ),
          if  ( Platform.isIOS && size.height >= 812)
            const SizedBox(
              height: 40,
            ),
        ],
      ),
    );

    return BlocListener<MainViewsBloc, MainViewsState>(
        listener: (context, state) {
          state.map(
            homePage: (_) => _currentIndex.value = 0,
            savingsPage: (_) => _currentIndex.value = 1,
            savingsDetailPage: (_) => _currentIndex.value = 1,
            trustedPayUnlockPage: (_) => _currentIndex.value = 4,
            trustedPayDetail: (_) => _currentIndex.value = 4,
            trustedPayLockedPage: (_) => _currentIndex.value = 4,
            budgetPage: (_) => _currentIndex.value = 3,
            budgetDetailPage: (_) => _currentIndex.value = 3,
            quickPaymentOverView: (_) => _currentIndex.value = 2,
          );
        },
        child: _child);
  }
}
