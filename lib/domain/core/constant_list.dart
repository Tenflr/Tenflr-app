// Done mo.i18ndfy the other of the list
import 'package:i18n_extension/default.i18n.dart';

const List<String> KCountries = [
  "AF",
  "BJ",
  "BW",
  "CM",
  "CG",
  "GH",
  "GN",
  "GW",
  "IR",
  "CI",
  "LR",
  "NA",
  "NG",
  "RW",
  "ZA",
  "SD",
  "SS",
  "SZ",
  "SY",
  "UG",
  "YE",
  "ZM",
  "EG"
];

const List<String> kSubscriptionModeList = ["per-transaction"];

const List<String> suportedLanguagesList = [
  'en',
  'fn',
];
// const List<String> budgetPeriodList = ["days", 'weeks', 'months', 'years'];

const String primaryLockupAddress = 'time.google.com';
const String secondaryLockupAddress = 'time.cloudfare.com';
const int maxTimeOffset = 5000;

const String NO_PROFILE_PIC = '';
// 'https://www.clipartmax.com/png/small/296-2969961_no-image-user-profile-icon.png';

// Budget Constants
const MIN_DAILY_PR = 200;
const MIN_WEEKLY_PR = 1000;
const MIN_MONTHLY_PR = 5000;
const MIN_YEARLY_PR = 50000;

const double FORCE_UNLOCK_LOST_PERCENTAGE = 0.05;
const double FORCE_UNLOCK_RETAINED_PERCENTAGE = 0.95;

List<String> translatedStrings = [
  "locked".i18n,
  "unlocked".i18n,
  "frozen".i18n,
  "cashed".i18n,
  "blocked".i18n,
  "day".i18n,
  "week".i18n,
  "month".i18n,
  "year".i18n,
  "active".i18n,
  "complete".i18n,
  "cancel".i18n,
  "credit".i18n,
  "days".i18n,
  'weeks'.i18n,
  'months'.i18n,
  'years'.i18n
];
enum kSavingStatus { locked, unlocked, frozen, cashed }

extension ParsekSavingStatus on kSavingStatus {
  String get val => this.toString().split('.').last;
}

enum kBudgetStatus { active, complete, frozen, cashed }

extension ParsekBudgetStatus on kBudgetStatus {
  String get val => this.toString().split('.').last;
}

enum kPayoutMode { day, week, month, year }

extension ParsekPayoutMode on kPayoutMode {
  String get val => this.toString().split('.').last;
}

enum kPaymentStatus { locked, blocked, unlocked, cancel, credit, cashed }

extension ParsekPaymentStatus on kPaymentStatus {
  String get val => this.toString().split('.').last;
}

enum kSubscriptionMode { transaction, monthly, yearly }

extension ParsekSubscriptionMode on kSubscriptionMode {
  String get val => this.toString().split('.').last;
}

enum kBudgetPeriodList { days, weeks, months, years }

extension ParsekBudgetPeriodList on kBudgetPeriodList {
  String get val => this.toString().split('.').last;
}

enum kTransactionType {
  qp, // quick payment
  tp, // trusted payment
  s, // savings
  b, // budget manager
  mt, // mtn transfer
  ot, // orange tranfer
}

extension ParsekTransactionType on kTransactionType {
  String get val => this.toString().split('.').last;
}
