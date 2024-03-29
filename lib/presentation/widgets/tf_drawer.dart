import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';

import '../../application/auth/auth_bloc/authentication_bloc.dart';
import '../../domain/user/user.dart';
import '../../routes/router.gr.dart';
import '../core/assets/colors.dart';
import '../core/assets/images.dart';
import '../core/icons/TfIcons_icons.dart';
import '../core/styles/text_styles.dart';
import '../core/translations/translations.i18n.dart';
import 'show_notification.dart';

class TfDrawer extends HookWidget {
  const TfDrawer();
  @override
  Widget build(BuildContext context) {
    final User user = Provider.of<User>(context, listen: false);
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding:
          EdgeInsets.symmetric(vertical: size.height * 0.05, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: (){
                ExtendedNavigator.of(context).pushUserProfile();
            },
                      child: Row(
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                if (user.photoUrl != null && user.photoUrl != "")
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: size.width * 0.07,
                    backgroundImage: NetworkImage(user.photoUrl),
                  )
                else
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: size.width * 0.07,
                    backgroundImage: AssetImage(TfImages.userimage),
                  ),
                const VerticalDivider(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      user?.displayName?.getOrCrash(),
                      style: DrawerTextStyle.userName(size),
                    ),
                    Text(
                      user.providerId == "google"
                          ? user.email.getOrCrash()
                          : user.phoneNumber.getOrCrash(),
                      style: DrawerTextStyle.identifier(size),
                    )
                  ],
                )
              ],
            ),
          ),
          const SpaceLine(),
          Column(
            children: [
              DrawerTile(
                description: "Notifications".i18n,
                icon: TfIcons.notif,
                onPressed: ()=>  showNotif(context),
              ),
              DrawerTile(
                description: "Light mode".i18n,
                icon: TfIcons.sun,
                onPressed: () {
                BotToast.showText(text: "Coming soon".i18n);
                },
              ),
              DrawerTile(
                description: "Settings".i18n,
                icon: TfIcons.settings,
                onPressed: () {
                 ExtendedNavigator.of(context).pushSettingsScreen();
                },
              ),
          //  const   SizedBox(height: 50,),
            ],
          ),
          const SpaceLine(),
              DrawerTile(
                description: "Sign Out".i18n,
                icon: TfIcons.exit,
                onPressed: () {
                  context
                      .bloc<AuthenticationBloc>()
                      .add(const AuthenticationEvent.signedOut());
                },
              ),
          // Opacity(
          //   opacity: 0,
          //   child: Row(
          //     // crossAxisAlignment: CrossAxisAlignment.end,
          //     children: [
          //       CircleAvatar(
          //         backgroundColor: Colors.transparent,
          //         radius: size.width * 0.07,
          //         backgroundImage: AssetImage(TfImages.userimage),
          //       ),
          //       const VerticalDivider(),
          //       Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Text(
          //             "User Name",
          //             style: DrawerTextStyle.userName(size),
          //           ),
          //           Text(
          //             "primary identifier",
          //             style: DrawerTextStyle.identifier(size),
          //           )
          //         ],
          //       )
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}

class SpaceLine extends StatelessWidget {
  const SpaceLine();
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(30, 0),
      child: const SizedBox(
        width: 100,
        child: Divider(
          thickness: 1.5,
          color: TfColors.primary,
        ),
      ),
    );
  }
}

class DrawerTile extends StatelessWidget {
  final String description;
  final IconData icon;
  final VoidCallback onPressed;

  const DrawerTile(
      {Key key,
      @required this.description,
      @required this.icon,
      @required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Transform.translate(
      offset: const Offset(-20, 0),
      child: SizedBox(
        width: size.width * 0.5,
        child: FlatButton(
            onPressed: onPressed,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  description,
                  style: DrawerTextStyle.tileNames(size),
                ),
                Icon(
                  icon,
                  color: TfColors.primary,
                )
              ],
            )),
      ),
    );
  }
}


