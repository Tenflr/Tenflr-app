import 'package:freezed_annotation/freezed_annotation.dart';

part 'database_failure.freezed.dart';
@freezed 
@immutable
abstract class DatabaseFailure with _$DatabaseFailure{
  const factory DatabaseFailure.unableToSetDataInCollection() = _UnableToSetDataInCollection;
  const factory DatabaseFailure.unableToSetDataInDocument() = _UnableToSetDataInDocument;
  const factory DatabaseFailure.unableToSetDataInDocumentBatch() = _UnableToSetDataInDocumentBatch;
  const factory DatabaseFailure.unableToUpdateAmount() = _UnableToUpdateAmount;
  const factory DatabaseFailure.unableToDelete() = _UnableToDelete;
  const factory DatabaseFailure.unableToGetData() = _UnableToGetData;
  const factory DatabaseFailure.unableToCreateNewUser() = _UnableToCreateNewUser;
  const factory DatabaseFailure.userNotFound() = _UserNotFound;
  const factory DatabaseFailure.unableToUpdateUserInfo() = _UnableToUpdateUserInfo;
  const factory DatabaseFailure.insufficientPermissions() = _InsuficientPermissions;
 
}