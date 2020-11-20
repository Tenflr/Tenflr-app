import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/main_views_bloc/main_views_bloc.dart';
import '../core/icons/TfIcons_icons.dart';
import '../core/translations/translations.i18n.dart';

class TitleBuilder extends StatelessWidget {
  // final MainViewsBloc bloc;

  const TitleBuilder();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainViewsBloc, MainViewsState>(
      // buildWhen: (p,c) => ,
      builder: (context, state) {
        return state.map(
          homePage: (e) => const Icon(TfIcons.tenfl_logo),
          savingsPage: (e) => PageTitle(title: "Savings".i18n),
          savingsDetailPage: (e) => PageTitle(title: "Savings Details".i18n),
          trustedPayUnlockPage: (e) =>
              PageTitle(title: "Trusted Payments".i18n),
          trustedPayLockedPage: (e) => PageTitle(title: "Trusted Pay".i18n),
          budgetPage: (e) => PageTitle(title: "Budgets".i18n),
          budgetDetailPage: (e) => PageTitle(title: "Budgets Details".i18n),
          quickPaymentOverView: (e) => PageTitle(title: "Quick Payments".i18n),
          trustedPayDetail: (e) => PageTitle(title: "Payment Details".i18n),
        );
      },
    );
  }
}

class PageTitle extends StatelessWidget {
  const PageTitle({
    Key key,
    @required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: size.width * 0.01),
      child: Text(
        title,
        style: TextStyle(
          // fontSize: size.width * 0.04,
          fontWeight: FontWeight.w400,
          // fontFamily: 'Circular',
        ),
      ),
    );
  }
}
