// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'budget_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
BudgetDto _$BudgetDtoFromJson(Map<String, dynamic> json) {
  return _BudgetDto.fromJson(json);
}

/// @nodoc
class _$BudgetDtoTearOff {
  const _$BudgetDtoTearOff();

// ignore: unused_element
  _BudgetDto call(
      {@JsonKey(ignore: true) String id,
      @required double totalAmount,
      @required double payoutAmount,
      @required String accountName,
      @required String payoutMode,
      @required bool isGift,
      @required DateTime unlockDate,
      @required DateTime nextUnlockDate,
      @required double amountLocked,
      @required double amountCashed,
      @required String rDisplayName,
      @required String receiverId,
      @required String rPhoneNumber,
      @required String rPhotoUrl,
      @required String sDisplayName,
      @required String senderId,
      @required String sPhoneNumber,
      @required String sPhotoUrl,
      @required String budgetStatus,
      @required bool isHidden,
      @required bool isFrozen,
      @required bool isDeleted,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp}) {
    return _BudgetDto(
      id: id,
      totalAmount: totalAmount,
      payoutAmount: payoutAmount,
      accountName: accountName,
      payoutMode: payoutMode,
      isGift: isGift,
      unlockDate: unlockDate,
      nextUnlockDate: nextUnlockDate,
      amountLocked: amountLocked,
      amountCashed: amountCashed,
      rDisplayName: rDisplayName,
      receiverId: receiverId,
      rPhoneNumber: rPhoneNumber,
      rPhotoUrl: rPhotoUrl,
      sDisplayName: sDisplayName,
      senderId: senderId,
      sPhoneNumber: sPhoneNumber,
      sPhotoUrl: sPhotoUrl,
      budgetStatus: budgetStatus,
      isHidden: isHidden,
      isFrozen: isFrozen,
      isDeleted: isDeleted,
      serverTimeStamp: serverTimeStamp,
    );
  }

// ignore: unused_element
  BudgetDto fromJson(Map<String, Object> json) {
    return BudgetDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $BudgetDto = _$BudgetDtoTearOff();

/// @nodoc
mixin _$BudgetDto {
  @JsonKey(ignore: true)
  String get id;
  double get totalAmount;
  double get payoutAmount;
  String get accountName;
  String get payoutMode;
  bool get isGift;
  DateTime get unlockDate;
  DateTime get nextUnlockDate;
  double get amountLocked;
  double get amountCashed;
  String get rDisplayName;
  String get receiverId;
  String get rPhoneNumber;
  String get rPhotoUrl;
  String get sDisplayName;
  String get senderId;
  String get sPhoneNumber;
  String get sPhotoUrl;
  String get budgetStatus;
  bool get isHidden;
  bool get isFrozen;
  bool
      get isDeleted; // Placeholder value --> converted to Time on server where not has been updated to
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;

  Map<String, dynamic> toJson();
  $BudgetDtoCopyWith<BudgetDto> get copyWith;
}

/// @nodoc
abstract class $BudgetDtoCopyWith<$Res> {
  factory $BudgetDtoCopyWith(BudgetDto value, $Res Function(BudgetDto) then) =
      _$BudgetDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      double totalAmount,
      double payoutAmount,
      String accountName,
      String payoutMode,
      bool isGift,
      DateTime unlockDate,
      DateTime nextUnlockDate,
      double amountLocked,
      double amountCashed,
      String rDisplayName,
      String receiverId,
      String rPhoneNumber,
      String rPhotoUrl,
      String sDisplayName,
      String senderId,
      String sPhoneNumber,
      String sPhotoUrl,
      String budgetStatus,
      bool isHidden,
      bool isFrozen,
      bool isDeleted,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class _$BudgetDtoCopyWithImpl<$Res> implements $BudgetDtoCopyWith<$Res> {
  _$BudgetDtoCopyWithImpl(this._value, this._then);

  final BudgetDto _value;
  // ignore: unused_field
  final $Res Function(BudgetDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object totalAmount = freezed,
    Object payoutAmount = freezed,
    Object accountName = freezed,
    Object payoutMode = freezed,
    Object isGift = freezed,
    Object unlockDate = freezed,
    Object nextUnlockDate = freezed,
    Object amountLocked = freezed,
    Object amountCashed = freezed,
    Object rDisplayName = freezed,
    Object receiverId = freezed,
    Object rPhoneNumber = freezed,
    Object rPhotoUrl = freezed,
    Object sDisplayName = freezed,
    Object senderId = freezed,
    Object sPhoneNumber = freezed,
    Object sPhotoUrl = freezed,
    Object budgetStatus = freezed,
    Object isHidden = freezed,
    Object isFrozen = freezed,
    Object isDeleted = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      totalAmount:
          totalAmount == freezed ? _value.totalAmount : totalAmount as double,
      payoutAmount: payoutAmount == freezed
          ? _value.payoutAmount
          : payoutAmount as double,
      accountName:
          accountName == freezed ? _value.accountName : accountName as String,
      payoutMode:
          payoutMode == freezed ? _value.payoutMode : payoutMode as String,
      isGift: isGift == freezed ? _value.isGift : isGift as bool,
      unlockDate:
          unlockDate == freezed ? _value.unlockDate : unlockDate as DateTime,
      nextUnlockDate: nextUnlockDate == freezed
          ? _value.nextUnlockDate
          : nextUnlockDate as DateTime,
      amountLocked: amountLocked == freezed
          ? _value.amountLocked
          : amountLocked as double,
      amountCashed: amountCashed == freezed
          ? _value.amountCashed
          : amountCashed as double,
      rDisplayName: rDisplayName == freezed
          ? _value.rDisplayName
          : rDisplayName as String,
      receiverId:
          receiverId == freezed ? _value.receiverId : receiverId as String,
      rPhoneNumber: rPhoneNumber == freezed
          ? _value.rPhoneNumber
          : rPhoneNumber as String,
      rPhotoUrl: rPhotoUrl == freezed ? _value.rPhotoUrl : rPhotoUrl as String,
      sDisplayName: sDisplayName == freezed
          ? _value.sDisplayName
          : sDisplayName as String,
      senderId: senderId == freezed ? _value.senderId : senderId as String,
      sPhoneNumber: sPhoneNumber == freezed
          ? _value.sPhoneNumber
          : sPhoneNumber as String,
      sPhotoUrl: sPhotoUrl == freezed ? _value.sPhotoUrl : sPhotoUrl as String,
      budgetStatus: budgetStatus == freezed
          ? _value.budgetStatus
          : budgetStatus as String,
      isHidden: isHidden == freezed ? _value.isHidden : isHidden as bool,
      isFrozen: isFrozen == freezed ? _value.isFrozen : isFrozen as bool,
      isDeleted: isDeleted == freezed ? _value.isDeleted : isDeleted as bool,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

/// @nodoc
abstract class _$BudgetDtoCopyWith<$Res> implements $BudgetDtoCopyWith<$Res> {
  factory _$BudgetDtoCopyWith(
          _BudgetDto value, $Res Function(_BudgetDto) then) =
      __$BudgetDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      double totalAmount,
      double payoutAmount,
      String accountName,
      String payoutMode,
      bool isGift,
      DateTime unlockDate,
      DateTime nextUnlockDate,
      double amountLocked,
      double amountCashed,
      String rDisplayName,
      String receiverId,
      String rPhoneNumber,
      String rPhotoUrl,
      String sDisplayName,
      String senderId,
      String sPhoneNumber,
      String sPhotoUrl,
      String budgetStatus,
      bool isHidden,
      bool isFrozen,
      bool isDeleted,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class __$BudgetDtoCopyWithImpl<$Res> extends _$BudgetDtoCopyWithImpl<$Res>
    implements _$BudgetDtoCopyWith<$Res> {
  __$BudgetDtoCopyWithImpl(_BudgetDto _value, $Res Function(_BudgetDto) _then)
      : super(_value, (v) => _then(v as _BudgetDto));

  @override
  _BudgetDto get _value => super._value as _BudgetDto;

  @override
  $Res call({
    Object id = freezed,
    Object totalAmount = freezed,
    Object payoutAmount = freezed,
    Object accountName = freezed,
    Object payoutMode = freezed,
    Object isGift = freezed,
    Object unlockDate = freezed,
    Object nextUnlockDate = freezed,
    Object amountLocked = freezed,
    Object amountCashed = freezed,
    Object rDisplayName = freezed,
    Object receiverId = freezed,
    Object rPhoneNumber = freezed,
    Object rPhotoUrl = freezed,
    Object sDisplayName = freezed,
    Object senderId = freezed,
    Object sPhoneNumber = freezed,
    Object sPhotoUrl = freezed,
    Object budgetStatus = freezed,
    Object isHidden = freezed,
    Object isFrozen = freezed,
    Object isDeleted = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_BudgetDto(
      id: id == freezed ? _value.id : id as String,
      totalAmount:
          totalAmount == freezed ? _value.totalAmount : totalAmount as double,
      payoutAmount: payoutAmount == freezed
          ? _value.payoutAmount
          : payoutAmount as double,
      accountName:
          accountName == freezed ? _value.accountName : accountName as String,
      payoutMode:
          payoutMode == freezed ? _value.payoutMode : payoutMode as String,
      isGift: isGift == freezed ? _value.isGift : isGift as bool,
      unlockDate:
          unlockDate == freezed ? _value.unlockDate : unlockDate as DateTime,
      nextUnlockDate: nextUnlockDate == freezed
          ? _value.nextUnlockDate
          : nextUnlockDate as DateTime,
      amountLocked: amountLocked == freezed
          ? _value.amountLocked
          : amountLocked as double,
      amountCashed: amountCashed == freezed
          ? _value.amountCashed
          : amountCashed as double,
      rDisplayName: rDisplayName == freezed
          ? _value.rDisplayName
          : rDisplayName as String,
      receiverId:
          receiverId == freezed ? _value.receiverId : receiverId as String,
      rPhoneNumber: rPhoneNumber == freezed
          ? _value.rPhoneNumber
          : rPhoneNumber as String,
      rPhotoUrl: rPhotoUrl == freezed ? _value.rPhotoUrl : rPhotoUrl as String,
      sDisplayName: sDisplayName == freezed
          ? _value.sDisplayName
          : sDisplayName as String,
      senderId: senderId == freezed ? _value.senderId : senderId as String,
      sPhoneNumber: sPhoneNumber == freezed
          ? _value.sPhoneNumber
          : sPhoneNumber as String,
      sPhotoUrl: sPhotoUrl == freezed ? _value.sPhotoUrl : sPhotoUrl as String,
      budgetStatus: budgetStatus == freezed
          ? _value.budgetStatus
          : budgetStatus as String,
      isHidden: isHidden == freezed ? _value.isHidden : isHidden as bool,
      isFrozen: isFrozen == freezed ? _value.isFrozen : isFrozen as bool,
      isDeleted: isDeleted == freezed ? _value.isDeleted : isDeleted as bool,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_BudgetDto extends _BudgetDto {
  const _$_BudgetDto(
      {@JsonKey(ignore: true) this.id,
      @required this.totalAmount,
      @required this.payoutAmount,
      @required this.accountName,
      @required this.payoutMode,
      @required this.isGift,
      @required this.unlockDate,
      @required this.nextUnlockDate,
      @required this.amountLocked,
      @required this.amountCashed,
      @required this.rDisplayName,
      @required this.receiverId,
      @required this.rPhoneNumber,
      @required this.rPhotoUrl,
      @required this.sDisplayName,
      @required this.senderId,
      @required this.sPhoneNumber,
      @required this.sPhotoUrl,
      @required this.budgetStatus,
      @required this.isHidden,
      @required this.isFrozen,
      @required this.isDeleted,
      @required @ServerTimestampConverter() this.serverTimeStamp})
      : assert(totalAmount != null),
        assert(payoutAmount != null),
        assert(accountName != null),
        assert(payoutMode != null),
        assert(isGift != null),
        assert(unlockDate != null),
        assert(nextUnlockDate != null),
        assert(amountLocked != null),
        assert(amountCashed != null),
        assert(rDisplayName != null),
        assert(receiverId != null),
        assert(rPhoneNumber != null),
        assert(rPhotoUrl != null),
        assert(sDisplayName != null),
        assert(senderId != null),
        assert(sPhoneNumber != null),
        assert(sPhotoUrl != null),
        assert(budgetStatus != null),
        assert(isHidden != null),
        assert(isFrozen != null),
        assert(isDeleted != null),
        assert(serverTimeStamp != null),
        super._();

  factory _$_BudgetDto.fromJson(Map<String, dynamic> json) =>
      _$_$_BudgetDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final double totalAmount;
  @override
  final double payoutAmount;
  @override
  final String accountName;
  @override
  final String payoutMode;
  @override
  final bool isGift;
  @override
  final DateTime unlockDate;
  @override
  final DateTime nextUnlockDate;
  @override
  final double amountLocked;
  @override
  final double amountCashed;
  @override
  final String rDisplayName;
  @override
  final String receiverId;
  @override
  final String rPhoneNumber;
  @override
  final String rPhotoUrl;
  @override
  final String sDisplayName;
  @override
  final String senderId;
  @override
  final String sPhoneNumber;
  @override
  final String sPhotoUrl;
  @override
  final String budgetStatus;
  @override
  final bool isHidden;
  @override
  final bool isFrozen;
  @override
  final bool isDeleted;
  @override // Placeholder value --> converted to Time on server where not has been updated to
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'BudgetDto(id: $id, totalAmount: $totalAmount, payoutAmount: $payoutAmount, accountName: $accountName, payoutMode: $payoutMode, isGift: $isGift, unlockDate: $unlockDate, nextUnlockDate: $nextUnlockDate, amountLocked: $amountLocked, amountCashed: $amountCashed, rDisplayName: $rDisplayName, receiverId: $receiverId, rPhoneNumber: $rPhoneNumber, rPhotoUrl: $rPhotoUrl, sDisplayName: $sDisplayName, senderId: $senderId, sPhoneNumber: $sPhoneNumber, sPhotoUrl: $sPhotoUrl, budgetStatus: $budgetStatus, isHidden: $isHidden, isFrozen: $isFrozen, isDeleted: $isDeleted, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BudgetDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.totalAmount, totalAmount) ||
                const DeepCollectionEquality()
                    .equals(other.totalAmount, totalAmount)) &&
            (identical(other.payoutAmount, payoutAmount) ||
                const DeepCollectionEquality()
                    .equals(other.payoutAmount, payoutAmount)) &&
            (identical(other.accountName, accountName) ||
                const DeepCollectionEquality()
                    .equals(other.accountName, accountName)) &&
            (identical(other.payoutMode, payoutMode) ||
                const DeepCollectionEquality()
                    .equals(other.payoutMode, payoutMode)) &&
            (identical(other.isGift, isGift) ||
                const DeepCollectionEquality().equals(other.isGift, isGift)) &&
            (identical(other.unlockDate, unlockDate) ||
                const DeepCollectionEquality()
                    .equals(other.unlockDate, unlockDate)) &&
            (identical(other.nextUnlockDate, nextUnlockDate) ||
                const DeepCollectionEquality()
                    .equals(other.nextUnlockDate, nextUnlockDate)) &&
            (identical(other.amountLocked, amountLocked) ||
                const DeepCollectionEquality()
                    .equals(other.amountLocked, amountLocked)) &&
            (identical(other.amountCashed, amountCashed) ||
                const DeepCollectionEquality()
                    .equals(other.amountCashed, amountCashed)) &&
            (identical(other.rDisplayName, rDisplayName) ||
                const DeepCollectionEquality()
                    .equals(other.rDisplayName, rDisplayName)) &&
            (identical(other.receiverId, receiverId) ||
                const DeepCollectionEquality()
                    .equals(other.receiverId, receiverId)) &&
            (identical(other.rPhoneNumber, rPhoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.rPhoneNumber, rPhoneNumber)) &&
            (identical(other.rPhotoUrl, rPhotoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.rPhotoUrl, rPhotoUrl)) &&
            (identical(other.sDisplayName, sDisplayName) ||
                const DeepCollectionEquality()
                    .equals(other.sDisplayName, sDisplayName)) &&
            (identical(other.senderId, senderId) ||
                const DeepCollectionEquality()
                    .equals(other.senderId, senderId)) &&
            (identical(other.sPhoneNumber, sPhoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.sPhoneNumber, sPhoneNumber)) &&
            (identical(other.sPhotoUrl, sPhotoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.sPhotoUrl, sPhotoUrl)) &&
            (identical(other.budgetStatus, budgetStatus) ||
                const DeepCollectionEquality()
                    .equals(other.budgetStatus, budgetStatus)) &&
            (identical(other.isHidden, isHidden) ||
                const DeepCollectionEquality()
                    .equals(other.isHidden, isHidden)) &&
            (identical(other.isFrozen, isFrozen) ||
                const DeepCollectionEquality()
                    .equals(other.isFrozen, isFrozen)) &&
            (identical(other.isDeleted, isDeleted) ||
                const DeepCollectionEquality()
                    .equals(other.isDeleted, isDeleted)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality().equals(other.serverTimeStamp, serverTimeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(totalAmount) ^
      const DeepCollectionEquality().hash(payoutAmount) ^
      const DeepCollectionEquality().hash(accountName) ^
      const DeepCollectionEquality().hash(payoutMode) ^
      const DeepCollectionEquality().hash(isGift) ^
      const DeepCollectionEquality().hash(unlockDate) ^
      const DeepCollectionEquality().hash(nextUnlockDate) ^
      const DeepCollectionEquality().hash(amountLocked) ^
      const DeepCollectionEquality().hash(amountCashed) ^
      const DeepCollectionEquality().hash(rDisplayName) ^
      const DeepCollectionEquality().hash(receiverId) ^
      const DeepCollectionEquality().hash(rPhoneNumber) ^
      const DeepCollectionEquality().hash(rPhotoUrl) ^
      const DeepCollectionEquality().hash(sDisplayName) ^
      const DeepCollectionEquality().hash(senderId) ^
      const DeepCollectionEquality().hash(sPhoneNumber) ^
      const DeepCollectionEquality().hash(sPhotoUrl) ^
      const DeepCollectionEquality().hash(budgetStatus) ^
      const DeepCollectionEquality().hash(isHidden) ^
      const DeepCollectionEquality().hash(isFrozen) ^
      const DeepCollectionEquality().hash(isDeleted) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @override
  _$BudgetDtoCopyWith<_BudgetDto> get copyWith =>
      __$BudgetDtoCopyWithImpl<_BudgetDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BudgetDtoToJson(this);
  }
}

abstract class _BudgetDto extends BudgetDto {
  const _BudgetDto._() : super._();
  const factory _BudgetDto(
          {@JsonKey(ignore: true) String id,
          @required double totalAmount,
          @required double payoutAmount,
          @required String accountName,
          @required String payoutMode,
          @required bool isGift,
          @required DateTime unlockDate,
          @required DateTime nextUnlockDate,
          @required double amountLocked,
          @required double amountCashed,
          @required String rDisplayName,
          @required String receiverId,
          @required String rPhoneNumber,
          @required String rPhotoUrl,
          @required String sDisplayName,
          @required String senderId,
          @required String sPhoneNumber,
          @required String sPhotoUrl,
          @required String budgetStatus,
          @required bool isHidden,
          @required bool isFrozen,
          @required bool isDeleted,
          @required @ServerTimestampConverter() FieldValue serverTimeStamp}) =
      _$_BudgetDto;

  factory _BudgetDto.fromJson(Map<String, dynamic> json) =
      _$_BudgetDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  double get totalAmount;
  @override
  double get payoutAmount;
  @override
  String get accountName;
  @override
  String get payoutMode;
  @override
  bool get isGift;
  @override
  DateTime get unlockDate;
  @override
  DateTime get nextUnlockDate;
  @override
  double get amountLocked;
  @override
  double get amountCashed;
  @override
  String get rDisplayName;
  @override
  String get receiverId;
  @override
  String get rPhoneNumber;
  @override
  String get rPhotoUrl;
  @override
  String get sDisplayName;
  @override
  String get senderId;
  @override
  String get sPhoneNumber;
  @override
  String get sPhotoUrl;
  @override
  String get budgetStatus;
  @override
  bool get isHidden;
  @override
  bool get isFrozen;
  @override
  bool get isDeleted;
  @override // Placeholder value --> converted to Time on server where not has been updated to
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  _$BudgetDtoCopyWith<_BudgetDto> get copyWith;
}
