import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../application/payment/trusted_pay_input_collector/trustedpayinputcollector_bloc.dart';
import '../../../../core/styles/text_styles.dart';
import '../../../../core/translations/translations.i18n.dart';
import '../../../../widgets/button.dart';
import '../../../../widgets/default_primary_input_field.dart';

class TpUserNamePage extends HookWidget {
  final PageController controller;
  const TpUserNamePage({@required this.controller});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final userQuery = useState('');
    return SingleChildScrollView(
      child: Center(
        child: Container(
          height: size.height,
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            // alignment: Alignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                  // height: 3,
                  ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: size.width * 0.7,
                    child: Text(
                      "Enter the receiver's phone number or email".i18n,
                      textAlign: TextAlign.center,
                      style: SavingsScreenTextStyle.createDescription(size),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Center(
                      child: Column(
                          // height: 60,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        const Text(''),
                        Center(
                            child: DefaultPrimaryTextInputField(
                          description: 'Recipient'.i18n,
                          // hintText: '',

                          hintText: 'Ex: user@gmail.com / +2367..',

                          onChanged: (value) {
                            userQuery.value = value;
                          },
                          onEditingComplete: () {
                            FocusScope.of(context).unfocus();
                            if (userQuery.value.length > 10) {
                              context.bloc<TrustedPayInputCollectorBloc>().add(
                                  TrustedPayInputCollectorEvent.searchUser(
                                      userQuery.value.trim()));
                            } else {
                              BotToast.showText(
                                  text: 'Recipient info incorrect'.i18n);
                            }
                          },
                        )),
                      ])),
                  BlocBuilder<TrustedPayInputCollectorBloc,
                          TrustedPayInputCollectorState>(
                      buildWhen: (p, c) => p.userFound != c.userFound,
                      builder: (context, state) {
                        if (state.showErrorMessage || state.userFound) {
                          final userName = state.payment.rDisplayName.isValid()
                              ? state.payment.rDisplayName.getOrCrash()
                              : "Recipient Not Found".i18n;
                          return Text(
                              state.userFound ? userName : "Recipient Not Found".i18n);
                        }
                        return const SizedBox();
                      }),
                ],
              ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,

                    children: [
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Button(
                            onPressed: () {
                              controller.nextPage(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeIn);
                            },
                            description: 'Next'.i18n,
                            toRight: true,
                            // width: size.width * 0.4,
                          )),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
