import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../../application/auth/auth_bloc/authentication_bloc.dart';
import '../../../application/auth/user_detail_bloc/user_detail_bloc.dart';
import '../../../domain/core/valid_objects.dart';
import '../../../domain/user/user.dart';
import '../../../injection.dart';
import '../../../routes/router.gr.dart';
import '../../core/icons/TfIcons_icons.dart';
import '../../core/styles/text_styles.dart';
import '../../core/translations/translations.i18n.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/button.dart';
import '../../widgets/default_primary_input_field.dart';
import '../../widgets/progess_overlay_screen.dart';
import 'widgets/phone_input_text_field.dart';

class GetMoreUserInfoAfterGoogleSignUp extends StatelessWidget {
  final User user;

  const GetMoreUserInfoAfterGoogleSignUp({Key key, this.user})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<UserDetailBloc>()..add(UserDetailEvent.initialize(user)),
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: GetMoreInfoForm(user: user)),
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

    final lNcontroller = useTextEditingController();
    final phoneController = useTextEditingController();

    final _number = useState(PhoneNumber(isoCode: 'CM'));
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
                  )..show(context);
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
                    description: "First name".i18n,
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
                    description: "Last name".i18n,
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
                  PhoneInputTextField(
                    initialValue: _number.value,
                    width: size.width * 0.8,
                    controller: phoneController,
                    textInputAction: TextInputAction.done,
                    onInputChanged: (PhoneNumber number) {
                      phoneController.selection = TextSelection.fromPosition(
                          TextPosition(offset: phoneController.text.length));
                      _number.value = number;
                      if (number.phoneNumber.length > 11) {
                        context.bloc<UserDetailBloc>().add(
                            UserDetailEvent.phoneNumberChanged(
                                phoneNumber:
                                    ValidPhoneNumber(number.phoneNumber)));
                      }
                    },
                    autovalidateMode:
                        context.bloc<UserDetailBloc>().state.showErrorMessage
                            ? AutovalidateMode.always
                            : AutovalidateMode.disabled,
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
                              .phoneNumber
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
