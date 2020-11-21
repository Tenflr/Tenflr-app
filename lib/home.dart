import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'presentation/screens/on_boarding/getstarted.dart';

class Home extends HookWidget {
  const Home( {Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: GetStarted());
  }
}
