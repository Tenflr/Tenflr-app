import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tenflrpay/application/auth/login_bloc/login_bloc.dart';
import 'package:tenflrpay/presentation/widgets/default_primary_button.dart';
import 'package:tenflrpay/presentation/core/translations/translations.i18n.dart';

class ContinueWithGoogleButton extends StatelessWidget {
  const ContinueWithGoogleButton({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultPrimaryButton(
      onPressed: () {
        context
            .bloc<LoginBloc>()
            .add(const LoginEvent.loginWithGooglePressed());
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const FaIcon(FontAwesomeIcons.google),
          Text('Continue with google'.i18n),
          const Opacity(opacity: 0, child: FaIcon(FontAwesomeIcons.google)),
        ],
      ),
    );
  }
}
