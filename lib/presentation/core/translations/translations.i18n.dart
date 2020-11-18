import 'package:i18n_extension/i18n_extension.dart';

extension Localization on String {
  static var _t = Translations.byLocale("fr_fr") +
      {
        "en_US": {
          "SAVE YOUR MONEY": "SAVE YOUR MONEY",
          "Create blocked savings account into which you keep money saved for a specified period of time.":
              "Create blocked savings account into which you keep money saved for a specified period of time.",
          "QUICK PAYMENTS": "QUICK PAYMENTS",
          "Do quick and instantaneous QR-code payment everywhere you are.":
              "Do quick and instantaneous QR-code payment everywhere you are.",
          "BUDGET MANAGER": "BUDGET MANAGER",
          "Create or send Budget Mangers to efficiently manage your money.":
              "Create or send Budget Mangers to efficiently manage your money.",
          "TRUSTED PAYMENTS": "TRUSTED PAYMENTS",
          "Make secure and trusted payments online.":
              "Make secure and trusted payments online.",
          "VIRTUAL CREDIT CARD": "VIRTUAL CREDIT CARD",
          "Make Transactions online without owning a credit card.":
              "Make Transactions online without owning a credit card.",
        },
        "fr_fr": {},
      };

  String fill(List<Object> params) => localizeFill(this, params);

  String get i18n => localize(this, _t);
}
