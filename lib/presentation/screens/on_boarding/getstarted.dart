import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/dot_animation_enum.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import '../../core/assets/colors.dart';
import '../../core/assets/images.dart';
import '../../core/styles/text_styles.dart';
import '../../core/translations/translations.i18n.dart';
import '../../../routes/router.gr.dart';

class GetStarted extends StatefulWidget {
  static const String id = "GetStarted";

  const GetStarted({
    Key key,
  }) : super(key: key);

  static Widget create(BuildContext context) {
    return const GetStarted();
  }

  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  List<Slide> slides = [];
  double deviceHeight;
  double deviceWidth;
  Function goToTab;

  @override
  void initState() {
    super.initState();

    slides.add(
      Slide(
        title: "SAVE YOUR MONEY".i18n,
        styleTitle: OnboradingTextStyles.onboardingTitle,
        description:
            "Create blocked savings account into which you keep money saved for a specified period of time."
                .i18n,
        styleDescription: OnboradingTextStyles.onboardingDescription,
        pathImage: TfImages.savings,
      ),
    );
    slides.add(
      Slide(
        title: "QUICK PAYMENTS".i18n,
        styleTitle: OnboradingTextStyles.onboardingTitle,
        styleDescription: OnboradingTextStyles.onboardingDescription,
        pathImage: TfImages.quickpay,
        description:
            "Do quick and instantaneous QR-code payment everywhere you are."
                .i18n,
      ),
    );
    slides.add(
      Slide(
        title: "BUDGET MANAGER".i18n,
        // styleTitle: kGetStartedTitleStyle,
        description:
            "Create or send Budget Managers to efficiently manage your money."
                .i18n,
        // styleDescription: kGetStartedSubTitleStyle,
        // pathImage: "assets/components/getStartedIcons/secure-payment.png",
        styleTitle: OnboradingTextStyles.onboardingTitle,
        styleDescription: OnboradingTextStyles.onboardingDescription,
        pathImage: TfImages.budget,
      ),
    );
    slides.add(
      Slide(
        title: "TRUSTED PAYMENTS".i18n,
        // styleTitle: kGetStartedTitleStyle,
        description: "Make secure and trusted payments online.".i18n,
        // styleDescription:  kGetStartedSubTitleStyle,
        // pathImage: "assets/components/getStartedIcons/payment.png",
        styleTitle: OnboradingTextStyles.onboardingTitle,
        styleDescription: OnboradingTextStyles.onboardingDescription,
        pathImage: TfImages.trustedpay,
      ),
    );
    slides.add(
      Slide(
        title: "VIRTUAL CREDIT CARD".i18n,
        // styleTitle: kGetStartedTitleStyle,
        description:
            "Make Transactions online without owning a credit card.".i18n,
        // styleDescription:  kGetStartedSubTitleStyle,
        // pathImage: "assets/components/getStartedIcons/online-banking.png",
        styleTitle: OnboradingTextStyles.onboardingTitle,
        styleDescription: OnboradingTextStyles.onboardingDescription,
        pathImage: TfImages.vitualcard,
      ),
    );
  }

  void onDonePress() {
    // Back to the first tab

    ExtendedNavigator.of(context).pushWelcomeLoginScreen();
    // getIt<AuthenticationBloc>()
    //     .add(const AuthenticationEvent.authCheckRequested());
  }

  void onTabChangeCompleted(index) {
    // Index of current tab is focused
  }

  Widget renderNextBtn() {
    return const Icon(
      Icons.navigate_next,
      color: TfColors.secondary,
      // size: 30.0,
    );
  }

  Widget renderDoneBtn() {
    return const Icon(
      Icons.done,
      color: TfColors.secondary,
    );
  }

  Widget renderSkipBtn() {
    return const Icon(
      Icons.skip_next,
      color: TfColors.secondary,
    );
  }

  List<Widget> renderListCustomTabs() {
    final List<Widget> tabs = [];
    for (int i = 0; i < slides.length; i++) {
      final Slide currentSlide = slides[i];
      tabs.add(Container(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          margin: EdgeInsets.only(
              left: deviceWidth / 10,
              right: deviceWidth / 10,
              bottom: deviceWidth / 4,
              top: deviceWidth / 6),
          child: ListView(
            children: <Widget>[
              GestureDetector(
                  child: Image.asset(
                currentSlide.pathImage,
                width: deviceHeight / 3,
                height: deviceHeight / 3,
                fit: BoxFit.contain,
              )),
              Container(
                margin: EdgeInsets.only(top: deviceWidth / 9),
                child: Text(
                  currentSlide.title,
                  style: currentSlide.styleTitle,
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: deviceWidth / 10),
                child: Text(
                  currentSlide.description,
                  style: currentSlide.styleDescription,
                  textAlign: TextAlign.center,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ));
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
    debugPrint("debug: GetstartedScreen");
    return Scaffold(
          body: IntroSlider(
        // List slides
        slides: slides,

        // Skip button
        renderSkipBtn: renderSkipBtn(),
        // colorSkipBtn: NeumorphicTheme.isUsingDark(context) ? kBottonColor :AppColors.lightPrimaryLightColor600,
        highlightColorSkipBtn: TfColors.secondary,
        colorSkipBtn: TfColors.primary,
        colorDoneBtn: TfColors.primary,
        colorDot: TfColors.primary,
        // Next button
        renderNextBtn: renderNextBtn(),

        // Done button
        renderDoneBtn: renderDoneBtn(),
        onDonePress: onDonePress,
        // colorDoneBtn:  NeumorphicTheme.isUsingDark(context) ? kBottonColor :AppColors.lightPrimaryLightColor600,
        highlightColorDoneBtn: TfColors.primary,

        // Dot indicator
        // colorDot:  NeumorphicTheme.isUsingDark(context) ? kBottonColor :AppColors.lightPrimaryLightColor600,
        colorActiveDot: TfColors.secondary,

        sizeDot: 10.0,
        typeDotAnimation: dotSliderAnimation.SIZE_TRANSITION,

        // Tabs
        listCustomTabs: renderListCustomTabs(),
        // backgroundColorAllSlides: NeumorphicTheme.isUsingDark(context)
        //     ? AppColors.primaryDarkColor500
        //     : AppColors.lightPrimaryColor,
        refFuncGoToTab: (Function refFunc) {
          this.goToTab = refFunc;
        },

        // Show or hide status bar
        shouldHideStatusBar: false,

        // On tab change completed
        onTabChangeCompleted: onTabChangeCompleted,
      ),
    );
  }
}
