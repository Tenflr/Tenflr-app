class APIPath {
// business gain
  static String get businessGainDoc => 'collegeplan/income';
  static String businessGainLog(String userId, String sourceId) =>
      'collegeplan/collegePlanGainLogs/$userId/$sourceId';

  //User paths
  static String get users => 'users';
  static String user(String uid) => 'users/$uid/';

  // User Settings
  static String userSettings(String userId) => 'settings/$userId';

  // Savings paths
  static String saving(String uid, String savingsId) =>
      'savings/$uid/savings/$savingsId';
  static String savings({String uid}) => 'savings/$uid/savings';
  // static String savingsActiveLogs(String userId, String savingId) =>
  //     'savingsLogs/$userId/active/$savingId';
  // static String savingsCompleteLogs(String userId, String savingId) =>
  //     'savingsLogs/$userId/complete/$savingId';
  static String savingsDone(String uid, String savingsId) =>
      'savings/$uid/done/$savingsId';

  // Trusted Pay paths
  static String trustedPaymentSent(String uid, String paymentId) =>
      'trustedpayments/sent/$uid/$paymentId';
  static String trustedPaymentReceived(String receiverUid, String paymentId) =>
      'trustedpayments/received/$receiverUid/$paymentId';
  static String trustedPayFunds(String uid) => 'trustedPayFunds/$uid';
  static String trustedPaymentDone(String uid, String paymentId) =>
      'trustedpayments/done/$uid/$paymentId';

// Budget paths
  static String budgetSent(String uid, String budgetId) =>
      'budgets/sent/$uid/$budgetId';
  static String budgetReceived(String receiverUid, String budgetId) =>
      'budgets/received/$receiverUid/$budgetId';
  static String budgetPersonal(String uid, String budgetId) =>
      'budgets/personal/$uid/$budgetId';
  // static String budgetReceivedLogs(String receiverId, String budgetId) =>
  //     'budgetLogs/$receiverId/received/$budgetId';
  // static String budgetSentLogs(String senderId, String budgetId) =>
  //     'budgetLogs/$senderId/sent/$budgetId';
  // static String budgetPersonalLogs(String userId, String budgetId) =>
  //     'budgetLogs/$userId/personal/$budgetId';
  static String budgetDone(String userId, String budgetId) =>
      'budgetLogs/$userId/done/$budgetId';

  // Quick Payment paths
  static String quickPaymentSent(String userId, String paymentId ) =>
      'quickpayments/sent/$userId/$paymentId';
  static String quickPaymentReceived(String userId, String paymentId ) =>
      'quickpayments/received/$userId/$paymentId';

  // Logs
  static String transactionLogs(String uid) => 'logs/$uid/logs';
  static String transactionWeeklyLogs(String uid, String day) =>
      'logs/$uid/weeklyLogs/$day';

  // device_ids and token
  static String device_id({String id = ''}) => 'device_id/$id';
}
