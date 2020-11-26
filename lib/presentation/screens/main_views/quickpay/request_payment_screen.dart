import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../../application/quick_payment/quick_payment_bloc/quick_payment_bloc.dart';
import '../../../../application/quick_payment/quick_payment_watcher_bloc/quick_payment_watcher_bloc.dart';
import '../../../../domain/core/valid_objects.dart';
import '../../../../domain/user/user.dart';
import '../../../../injection.dart';
import '../../../core/assets/colors.dart';
import '../../../core/assets/images.dart';
import '../../../core/icons/TfIcons_icons.dart';
import '../../../core/styles/decorations.dart';
import '../../../core/styles/text_styles.dart';
import '../../../core/translations/translations.i18n.dart';
import '../../../widgets/app_bar.dart';
import 'widgets/cash_logic.dart';
import 'widgets/neu_cash_button.dart';
import 'widgets/neumorphic_theme.dart';

class RequestPaymentScreen extends StatelessWidget {
  final User user;
  const RequestPaymentScreen({
    @required this.user,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Calculator>(create: (_) => Calculator()),
        Provider.value(value: user),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<QuickPaymentWatcherBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<QuickPaymentBloc>()
              ..add(QuickPaymentEvent.initialize(user)),
          )
        ],
        child: const Scaffold(body: RequestPaymentForm()),
      ),
    );
  }
}

class RequestPaymentForm extends HookWidget {
  const RequestPaymentForm();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final calculator = Provider.of<Calculator>(context);
    final User user = Provider.of<User>(context, listen: false);
    final ValueNotifier<int> oldSize = useState(0);
    // final ValueNotifier<int> newSize = useState(0);

    return BlocBuilder<QuickPaymentWatcherBloc, QuickPaymentWatcherState>(
      builder: (context, state) {
        final Widget _child = SingleChildScrollView(
          child: Container(
            // height: size.height * 0.9,
            color: TfColors.secondary,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // const Spacer(),
                TfAppBar(
                    leading: IconButton(
                      icon: const Icon(TfIcons.arrow_back),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    description: Text('Enter Request Amount'.i18n,
                        style:
                            SavingsScreenTextStyle.addSavingsDescription(size)),
                    trailing: const Opacity(
                        opacity: 0,
                        child: IconButton(
                          icon: Icon(TfIcons.arrow_back),
                          onPressed: null,
                        ))),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'XAF ',
                        style: GoogleFonts.montserrat(
                          fontSize: size.width * 0.05,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          // "0.0",
                          calculator.value.toString(),
                          style: GoogleFonts.montserrat(
                            fontSize: size.width * 0.15,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                    height: size.height > 812
                        ? size.height * 0.1
                        : size.height * 0.01),
                ButtonRow(children: [
                  NeuCalculatorButton(
                    text: 'AC',
                    onPressed: () {
                      calculator.reset();
                      context
                          .bloc<QuickPaymentBloc>()
                          .add(QuickPaymentEvent.initialize(user));
                    },
                    textColor: kOrange,
                  ),
                  NeuCalculatorButton(text: '.', onPressed: () {}),
                  NeuCalculatorButton(
                    text: '=',
                    textColor: kOrange,
                    textSize: size.width * 0.1,
                    // onPressed: () {},
                    onPressed: calculator.showResult,
                  ),
                  NeuCalculatorButton(
                    text: '÷',
                    textColor: kOrange,
                    textSize: size.width * 0.1,
                    // onPressed: () {}

                    onPressed: calculator.divide,

                    isChosen: calculator.currentVariable is CalculatorDivide,
                  ),
                ]),
                ButtonRow(
                  children: [
                    NeuCalculatorButton(
                      text: '7',
                      onPressed: () => calculator.setValue(7),
                    ),
                    NeuCalculatorButton(
                      text: '8',
                      onPressed: () => calculator.setValue(8),
                    ),
                    NeuCalculatorButton(
                      text: '9',
                      onPressed: () => calculator.setValue(9),
                    ),
                    NeuCalculatorButton(
                      text: 'x',
                      textColor: kOrange,
                      onPressed: calculator.multiply,
                      isChosen:
                          calculator.currentVariable is CalculatorMultiply,
                    ),
                  ],
                ),
                ButtonRow(
                  children: [
                    NeuCalculatorButton(
                      text: '4',
                      onPressed: () => calculator.setValue(4),
                    ),
                    NeuCalculatorButton(
                      text: '5',
                      onPressed: () => calculator.setValue(5),
                    ),
                    NeuCalculatorButton(
                      text: '6',
                      onPressed: () => calculator.setValue(6),
                    ),
                    NeuCalculatorButton(
                      text: '-',
                      textColor: kOrange,
                      textSize: size.width * 0.13,
                      onPressed: calculator.deduct,
                      isChosen: calculator.currentVariable is CalculatorDeduct,
                    ),
                  ],
                ),
                ButtonRow(
                  children: [
                    NeuCalculatorButton(
                      text: '1',
                      onPressed: () => calculator.setValue(1),
                    ),
                    NeuCalculatorButton(
                      text: '2',
                      onPressed: () => calculator.setValue(2),
                    ),
                    NeuCalculatorButton(
                      text: '3',
                      onPressed: () => calculator.setValue(3),
                    ),
                    NeuCalculatorButton(
                      text: '+',
                      textColor: kOrange,
                      textSize: size.width * 0.1,
                      onPressed: calculator.add,
                      isChosen: calculator.currentVariable is CalculatorAdd,
                    ),
                  ],
                ),
                ButtonRow(
                  children: [
                    NeuCalculatorButton(
                      text: 'Request'.i18n,
                      onPressed: () {
                        final amount = MoneyAmount(
                            double.parse(calculator.value.toString()));

                        context
                            .bloc<QuickPaymentBloc>()
                            .add(QuickPaymentEvent.requestPayment(amount));

                        if (amount.getOrCrash() > 0) {
                          _qrAlert(context, amount, size);
                        }
                      },
                      textColor: kOrange,
                      isPill: true,
                    ),
                    NeuCalculatorButton(
                      textSize: size.width * 0.1,
                      text: '0',
                      onPressed: () => calculator.setValue(0),
                      isPill: true,
                    ),
                  ],
                ),
                // SizedBox(
                //   height: MediaQuery.of(context).padding.bottom,
                // )
              ],
            ),
          ),
        );
        return state.map(
          initial: (e) => _child,
          loadInProgress: (e) => _child,
          loadSuccess: (e) {
            if(e.quickPayment.size > oldSize.value){
              Navigator.of(context).pop();
            }
            oldSize.value = e.quickPayment.size;
            return _child;
          },
          loadFailure: (e) => _child,
        );
      },
    );
  }
}

class ButtonRow extends StatelessWidget {
  const ButtonRow({
    Key key,
    @required this.children,
  }) : super(key: key);

  final List<NeuCalculatorButton> children;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // mainAxisSize: MainAxisSize.min,
        children: children,
      ),
    );
  }
}

_qrAlert(BuildContext context, MoneyAmount amount, Size size) =>
    showGeneralDialog(
        context: context,
        barrierDismissible: true,
        barrierLabel:
            MaterialLocalizations.of(context).modalBarrierDismissLabel,
        // barrierColor: ,
        transitionDuration: const Duration(milliseconds: 200),
        pageBuilder: (BuildContext buildContext, Animation animation,
            Animation secondaryAnimation) {
          return Center(
            child: Material(
              child: Container(
                decoration: DefaultDecoration.all,
                width: size.width * 0.8,
                height: size.height * 0.55,
                padding: EdgeInsets.all(size.width * 0.05),
                // color: Colors.white,
                child: Column(
                  // mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Scan to pay".i18n,
                      style: GoogleFonts.montserrat(
                        fontSize: size.width * 0.07,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    QrImage(
                      // foregroundColor: NeumorphicTheme.isUsingDark(context)
                      //     ? Colors.white
                      //     : Colors.black,
                      data:
                          context.bloc<QuickPaymentBloc>().state.encryptedToken,
                      version: QrVersions.auto,
                      embeddedImage: AssetImage(TfImages.tp_logo),
                      size: size.width * 0.57,
                      embeddedImageStyle: QrEmbeddedImageStyle(
                        size: Size(size.width * 0.08, size.width * 0.08),
                      ),
                    ),
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        'XAF ${amount.getOrCrash()}',
                        style: GoogleFonts.montserrat(
                          fontSize: size.width * 0.1,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
