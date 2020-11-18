import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tenflrpay/application/auth/auth_bloc/authentication_bloc.dart';
import 'package:tenflrpay/application/auth/user_detail_bloc/user_detail_bloc.dart';
import 'package:tenflrpay/domain/core/valid_objects.dart';
import 'package:tenflrpay/domain/user/user.dart';
import 'package:tenflrpay/injection.dart';
import 'package:tenflrpay/presentation/core/icons/TfIcons_icons.dart';
import 'package:tenflrpay/presentation/core/styles/text_styles.dart';
import 'package:tenflrpay/presentation/widgets/app_bar.dart';
import 'package:tenflrpay/presentation/widgets/button.dart';
import 'package:tenflrpay/presentation/widgets/default_primary_input_field.dart';
import 'package:tenflrpay/presentation/widgets/progess_overlay_screen.dart';
import '../../core/translations/translations.i18n.dart';
import '../../../routes/router.gr.dart';

class GetMoreUserInfoAfterPhoneSignUp extends StatelessWidget {
  final User user;

  const GetMoreUserInfoAfterPhoneSignUp({Key key, this.user}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<UserDetailBloc>()..add(UserDetailEvent.initialize(user)),
      child: Scaffold(
          resizeToAvoidBottomPadding: false, body: GetMoreInfoForm(user: user)),
    );
  }
}

class GetMoreInfoForm extends HookWidget {
  final User user;
  const GetMoreInfoForm({Key key, @required this.user}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final fNcontroller = useTextEditingController();
    final fnFocusNode = useFocusNode();
    final lnFocusNode = useFocusNode();
    final emailFocusNode = useFocusNode();

    final lNcontroller = useTextEditingController();
    final emailController = useTextEditingController();

    // final _number = useState(PhoneNumber(isoCode: 'CM'));
    final Size size = MediaQuery.of(context).size;
    // fNcontroller.addListener(() {
    //   context.bloc<UserDetailBloc>().add(UserDetailEvent.firstNameChanged(
    //       firstName: ValidUserName(fNcontroller.text)));
    // });
    // lNcontroller.addListener(() {
    //   context.bloc<UserDetailBloc>().add(UserDetailEvent.lastNameChanged(
    //       lastName: ValidUserName(lNcontroller.text)));
    // });
    return BlocConsumer<UserDetailBloc, UserDetailState>(
      listener: (context, state) {
        state.saveFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold((failure) {
                  FlushbarHelper.createError(
                    duration: const Duration(seconds: 5),
                    title: "Error Occurred 😨".i18n,
                    message: failure.maybeMap(
                      orElse: () => null,
                      unableToDelete: (_) => "Unable to Delete".i18n,
                      unableToCreateNewUser: (_) =>
                          "Unable to Create new User".i18n,
                      insufficientPermissions: (_) =>
                          "insufficient Permission. Contact support".i18n,
                      userNotFound: (_) => "Unable to find user".i18n,
                      unableToUpdateUserInfo: (_) =>
                          "Unable to update user's information!".i18n,
                    ),
                  ).show(context);
                }, (r) {
                  FlushbarHelper.createSuccess(
                          message:
                              'Thanks for provider your info 🙂. Signing in...'
                                  .i18n)
                      .show(context);

                  ExtendedNavigator.of(context).pushHomeScreen(
                    user: state.user,
                    // deviceId: state.deviceId,
                    // userSettings: state.userSettings
                  );
                }));
      },
      builder: (context, state) => Container(
          child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  TfAppBar(
                      leading: IconButton(
                        icon: const Icon(TfIcons.arrow_back),
                        onPressed: () {
                          context
                              .bloc<AuthenticationBloc>()
                              .add(const AuthenticationEvent.signedOut());
                        },
                      ),
                      description: Text(
                        'Your Details'.i18n,
                        style: MoreInfoTextStyle.title(size),
                      ),
                      trailing: const Opacity(
                        opacity: 0,
                        child: IconButton(
                          icon: Icon(TfIcons.arrow_back),
                          onPressed: null,
                        ),
                      )),
                  const SizedBox(height: 10),
                  DefaultPrimaryTextInputField(
                    description: "First name",
                    controller: fNcontroller,
                    validator: (_) => context
                        .bloc<UserDetailBloc>()
                        .state
                        .firstName
                        .value
                        .fold(
                            (f) => f.maybeMap(
                                  orElse: () => null,
                                  invalidUserName: (_) =>
                                      "Invalid Fist Name".i18n,
                                ),
                            (r) => null),
                    focusNode: fnFocusNode,
                    textInputAction: TextInputAction.next,
                    onEditingComplete: () => fnFocusNode.nextFocus(),
                    onChanged: (value) {
                      //  firstName = ValidUserName(value);
                      context.bloc<UserDetailBloc>().add(
                          UserDetailEvent.firstNameChanged(
                              firstName: ValidUserName(value)));
                    },
                  ),
                  DefaultPrimaryTextInputField(
                    description: "Last name",
                    controller: lNcontroller,
                    validator: (_) => context
                        .bloc<UserDetailBloc>()
                        .state
                        .firstName
                        .value
                        .fold(
                            (f) => f.maybeMap(
                                  orElse: () => null,
                                  invalidUserName: (_) =>
                                      "Invalid Last Name".i18n,
                                ),
                            (r) => null),
                    focusNode: lnFocusNode,
                    textInputAction: TextInputAction.next,
                    onEditingComplete: () => lnFocusNode.nextFocus(),
                    onChanged: (value) {
                      //  firstName = ValidUserName(value);
                      context.bloc<UserDetailBloc>().add(
                          UserDetailEvent.lastNameChanged(
                              lastName: ValidUserName(value)));
                    },
                  ),
                  DefaultPrimaryTextInputField(
                    description: "Email",
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    validator: (_) => context
                        .bloc<UserDetailBloc>()
                        .state
                        .user
                        .email
                        .value
                        .fold(
                            (f) => f.maybeMap(
                                  orElse: () => null,
                                  invalidUserName: (_) =>
                                      "Invalid Email address".i18n,
                                ),
                            (r) => null),
                    focusNode: emailFocusNode,
                    textInputAction: TextInputAction.done,
                    onEditingComplete: () => lnFocusNode.nextFocus(),
                    onChanged: (value) {
                      //  firstName = ValidUserName(value);
                      context.bloc<UserDetailBloc>().add(
                          UserDetailEvent.emailChanged(
                              email: EmailAddress(value)));
                    },
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Button(
                    onPressed: () {
                      if (context
                              .bloc<UserDetailBloc>()
                              .state
                              .user
                              .email
                              .isValid() &&
                          context
                              .bloc<UserDetailBloc>()
                              .state
                              .lastName
                              .isValid() &&
                          context
                              .bloc<UserDetailBloc>()
                              .state
                              .firstName
                              .isValid()) {
                        // currStep = 1;
                        context
                            .bloc<UserDetailBloc>()
                            .add(const UserDetailEvent.submit());
                      }
                    },
                    description: 'GetStarted'.i18n,
                    width: size.width * 0.8),
              ),
            ],
          ),
          ProgressOverlayIndicator(
            isSaving: state.isSubmitting,
          ),
        ],
      )),
    );
  }
}
