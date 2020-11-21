import 'package:cloud_firestore/cloud_firestore.dart';
import '../../domain/auth/i_auth_facade.dart';
import '../../domain/core/errors.dart';
import '../../domain/core/settings.dart';
import '../../domain/core/valid_objects.dart';
import '../../domain/device_id/i_device_id_facade.dart';
import '../repositories/api_path.dart';
import '../../injection.dart';
import 'package:flutter/foundation.dart';

extension FirebaseFirestoreX on Firestore {
  // user document
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return Firestore.instance
        .collection(APIPath.users)
        .document(user.id.getOrCrash());
  }

// payment document & col
  Future<DocumentReference> trustedPayBalanceDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return Firestore.instance
        .document(APIPath.trustedPayFunds(user.id.getOrCrash()));
  }

  Future<CollectionReference> transactionLogsCollection(
      {String receiverId}) async {
    if (receiverId != null) {
      return Firestore.instance.collection(APIPath.transactionLogs(receiverId));
    }
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return Firestore.instance
        .collection(APIPath.transactionLogs(user.id.getOrCrash()));
  }

  Future<DocumentReference> transactionsWeeklyLogsDocument(String day,
      {String receiverId}) async {
    if (receiverId != null) {
      return Firestore.instance
          .document(APIPath.transactionWeeklyLogs(receiverId, day));
    }
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return Firestore.instance
        .document(APIPath.transactionWeeklyLogs(user.id.getOrCrash(), day));
  }

  Future<CollectionReference> transactionsWeeklyLogsCollection(
      {String receiverId}) async {
    if (receiverId != null) {
      return Firestore.instance
          .collection(APIPath.transactionWeeklyLogs(receiverId, ''));
    }
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return Firestore.instance
        .collection(APIPath.transactionWeeklyLogs(user.id.getOrCrash(), ''));
  }

  Future<CollectionReference> paymentSentCollection() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return Firestore.instance
        .collection(APIPath.trustedPaymentSent(user.id.getOrCrash(), ""));
  }

  Future<CollectionReference> paymentReceivedCollection() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return Firestore.instance
        .collection(APIPath.trustedPaymentReceived(user.id.getOrCrash(), ""));
  }

  Future<DocumentReference> paymentDocumentRef(String paymentId,
      {String receiverId, @required bool received}) async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    if (received) {
      return Firestore.instance.document(APIPath.trustedPaymentReceived(
          receiverId ?? user.id.getOrCrash(), paymentId));
    }
    return Firestore.instance.document(APIPath.trustedPaymentSent(
        receiverId ?? user.id.getOrCrash(), paymentId));
  }

  Future<DocumentReference> trustedPayDoneDocument(String paymentId,
      {String receiverId}) async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return Firestore.instance.document(APIPath.trustedPaymentDone(
        receiverId ?? user.id.getOrCrash(), paymentId));
  }

  Future<CollectionReference> trustedPayDoneCollection(
      {String receiverId}) async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return Firestore.instance.collection(
        APIPath.trustedPaymentDone(receiverId ?? user.id.getOrCrash(), ''));
  }

  Future<DocumentReference> businessGainDoc() async {
    return Firestore.instance.document(APIPath.businessGainDoc);
  }

  Future<DocumentReference> businessGainLog(String sourceId) async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return Firestore.instance
        .document(APIPath.businessGainLog(user.id.getOrCrash(), sourceId));
  }

//budgets document & col
  Future<CollectionReference> budgetPersonalCollection() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return Firestore.instance
        .collection(APIPath.budgetPersonal(user.id.getOrCrash(), ""));
  }

  Future<CollectionReference> budgetSentCollection() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return Firestore.instance
        .collection(APIPath.budgetSent(user.id.getOrCrash(), ""));
  }

  Future<CollectionReference> budgetReceivedCollection() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return Firestore.instance
        .collection(APIPath.budgetReceived(user.id.getOrCrash(), ""));
  }

  Future<CollectionReference> budgetDoneCollection() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return Firestore.instance
        .collection(APIPath.budgetDone(user.id.getOrCrash(), ""));
  }

  Future<DocumentReference> budgetDoneDocument(String budgetId) async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return Firestore.instance
        .document(APIPath.budgetDone(user.id.getOrCrash(), budgetId));
  }

  Future<DocumentReference> budgetDocumentRef(String budgetId, String type,
      {bool sent = false, String senderId}) async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    String path;

    final bool isSent = sent && senderId != null;

    if (type == 'personal') {
      path = APIPath.budgetPersonal(
          isSent ? senderId : user.id.getOrCrash(), budgetId);
    } else if (type == 'sent') {
      path = APIPath.budgetSent(
          isSent ? senderId : user.id.getOrCrash(), budgetId);
    } else if (type == 'received') {
      path = APIPath.budgetReceived(
          isSent ? senderId : user.id.getOrCrash(), budgetId);
    }
    return Firestore.instance.document(path);
  }

  Future<DocumentReference> savingsDocument(String savingsId) async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return Firestore.instance
        .document(APIPath.saving(user.id.getOrCrash(), savingsId));
  }

  Future<DocumentReference> savingsDoneDocument(String savingsId) async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return Firestore.instance
        .document(APIPath.savingsDone(user.id.getOrCrash(), savingsId));
  }

  Future<CollectionReference> savingsDoneCollection() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return Firestore.instance
        .collection(APIPath.savingsDone(user.id.getOrCrash(), ''));
  }

  Future<CollectionReference> savingsCollection() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return Firestore.instance
        .collection(APIPath.savings(uid: user.id.getOrCrash()));
  }

  // device_id
  Future<CollectionReference> quickPaymentsSentCollection() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return Firestore.instance
        .collection(APIPath.quickPaymentSent(user.id.getOrCrash(), ''));
  }

// quick Payment
  Future<CollectionReference> deviceIdCollection() async {
    return Firestore.instance.collection(APIPath.device_id());
  }

  Future<DocumentReference> deviceIdReference() async {
    final MySettings _settings = getIt<MySettings>();
    String deviceId = _settings.getDeviceId;
    if (deviceId == null) {
      await _settings.setDeviceId();
      deviceId = _settings.getDeviceId;
    }
    return Firestore.instance.document(APIPath.device_id(id: deviceId));
  }

  Future<CollectionReference> quickPaymentsReceivedCollection() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return Firestore.instance
        .collection(APIPath.quickPaymentReceived(user.id.getOrCrash(), ''));
  }

  Future<DocumentReference> quickPaymentRefDoc(String paymentId,
      {String requesterId, bool forRequester = false}) async {
    if (!forRequester) {
      final userOption = await getIt<IAuthFacade>().getSignedInUser();
      final user = userOption.getOrElse(() => throw NotAuthenticatedError());
      return Firestore.instance
          .document(APIPath.quickPaymentSent(user.id.getOrCrash(), paymentId));
    }
    return Firestore.instance
        .document(APIPath.quickPaymentReceived(requesterId, paymentId));
  }

  // User Settings
  Future<DocumentReference> userSettingsDocRef() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return Firestore.instance
        .document(APIPath.userSettings(user.id.getOrCrash()));
  }

// batch
  Future<WriteBatch> get collectionBatch async => Firestore.instance.batch();
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get savingsCollection => collection(APIPath.savings());
  CollectionReference get userCollection => collection(APIPath.users);
  // CollectionReference get budgetCollection => collection(APIPath.budgetPersonal(uid, ''));
}
