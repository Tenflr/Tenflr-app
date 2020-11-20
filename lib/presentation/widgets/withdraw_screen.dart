import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tenflrpay/presentation/core/icons/TfIcons_icons.dart';
import 'package:tenflrpay/presentation/core/styles/text_styles.dart';
import 'package:tenflrpay/presentation/widgets/app_bar.dart';

import '../core/assets/svg.dart';
import '../core/styles/decorations.dart';
import 'withdraw_with_mtn_card.dart';
import 'withdraw_with_orange_card.dart';

class WithdrawScren extends StatelessWidget {
  const WithdrawScren();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height * 1.2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TfAppBar(
                  leading: IconButton(
                    icon: const Icon(TfIcons.arrow_back),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  description: Text('Withdraw',
                      style:
                          SavingsScreenTextStyle.addSavingsDescription(size)),
                  trailing: const Opacity(
                      opacity: 0,
                      child: IconButton(
                        icon: Icon(TfIcons.arrow_back),
                        onPressed: null,
                      ))),

              const WithdrawWithMTNCard(),
              // const SizedBox(height: 10),
              const WithdrawWithOrangeCard(),
              // const SizedBox(height: 10),
              Container(
                  width: size.width * 0.9,
                  decoration: DefaultDecoration.all,
                  child: InkWell(
                      onTap: () {
                        //todo;
                      },
                      child: SvgPicture.asset(TfSvg.add_bank))),
            ],
          ),
        ),
      ),
    );
  }
}
