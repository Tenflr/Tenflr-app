import 'package:flutter/material.dart';

import '../core/assets/images.dart';
import '../core/styles/decorations.dart';
import 'deposit_with_mtn_card.dart';
import 'deposit_with_orange_card.dart';

class DepositScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const DepositWithMTNCard(),
          const SizedBox(height: 10),
          const DepositWithOrangeCard(),
          Container(
            // margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            // padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            height: size.height * 0.35,

            child: Column(
              // crossAxisCount: 2,
              // crossAxisSpacing: 0,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 100,
                        width: size.width * 0.4,
                        // padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        decoration: DefaultDecoration.all,
                        child: Image.asset(
                          TfImages.creditcard,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 100,
                        width: size.width * 0.4,
                        decoration: DefaultDecoration.all,
                        child: Image.asset(TfImages.applePay),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 100,
                        width: size.width * 0.4,
                        decoration: DefaultDecoration.all,
                        child: Image.asset(TfImages.paypal),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 100,
                        width: size.width * 0.4,
                        decoration: DefaultDecoration.all,
                        child: Image.asset(TfImages.bitcoin),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
// const DepositWithOrangeCard(),
        ],
      ),
    );
  }
}
