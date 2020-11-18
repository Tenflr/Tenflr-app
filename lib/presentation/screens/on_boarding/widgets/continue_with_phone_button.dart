import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tenflrpay/application/auth/login_bloc/login_bloc.dart';
import 'package:tenflrpay/presentation/widgets/default_primary_button.dart';
import 'package:tenflrpay/presentation/core/translations/translations.i18n.dart';

class ContinueWithPhoneButton extends StatelessWidget {
  const ContinueWithPhoneButton({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultPrimaryButton(
      onPressed: () {
        context.bloc<LoginBloc>().add(const LoginEvent.loginWithPhonePressed());
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // const FaIcon(FontAwesomeIcons.google),
          Text("Continue".i18n),
          // const Opacity(opacity: 0, child: FaIcon(FontAwesomeIcons.google)),
        ],
      ),
    );
  }
}
