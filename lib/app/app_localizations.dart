import 'dart:convert';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  // Helper method to keep the code in the widgets concise
  // Localizations are accessed using an InheritedWidget 'of' syntax
  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  // Static memeber to have a simple access to the delgate from the MaterialApp
  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  Map<String, String> _localizedStrings;

  // Future<bool> load() async {
  //   // Load the language jSON file from the 'lang' folder
  //   String jsonString =
  //       await rootBundle.loadString('lang/${locale.languageCode}.json');

  //   final Map<String, dynamic> jsonMap =
  //       json.decode(jsonString) as Map<String, dynamic>;

  //   _localizedStrings =
  //       jsonMap.map((key, value) => MapEntry(key, value.toString()));
  //   return true;
  // }

  // // This method will be called from every widget which needs a localized text
  // String translate(String key) {
  //   return _localizedStrings[key];
  // }
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  // This delagate instance will never change (it doesnt even have fields!)
  // It can provide a constant constructor.
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    // Include all of your supported language coles here
    return ['en', 'fr'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    // AppLocalizations class is where the JSON laoding actually runs
    final AppLocalizations localizations = AppLocalizations(locale);
    // await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}
