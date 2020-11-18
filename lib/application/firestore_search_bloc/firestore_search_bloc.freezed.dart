// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'firestore_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FirestoreSearchEventTearOff {
  const _$FirestoreSearchEventTearOff();

// ignore: unused_element
  _SearchTermChanged searchTermChanged({@required String query}) {
    return _SearchTermChanged(
      query: query,
    );
  }

// ignore: unused_element
  _SearchResultOrFailure searchResultCompleted(
      {@required Either<UserSearchFailure, KtList<User>> failureOrUsers}) {
    return _SearchResultOrFailure(
      failureOrUsers: failureOrUsers,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FirestoreSearchEvent = _$FirestoreSearchEventTearOff();

/// @nodoc
mixin _$FirestoreSearchEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result searchTermChanged(String query),
    @required
        Result searchResultCompleted(
            Either<UserSearchFailure, KtList<User>> failureOrUsers),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result searchTermChanged(String query),
    Result searchResultCompleted(
        Either<UserSearchFailure, KtList<User>> failureOrUsers),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result searchTermChanged(_SearchTermChanged value),
    @required Result searchResultCompleted(_SearchResultOrFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result searchTermChanged(_SearchTermChanged value),
    Result searchResultCompleted(_SearchResultOrFailure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $FirestoreSearchEventCopyWith<$Res> {
  factory $FirestoreSearchEventCopyWith(FirestoreSearchEvent value,
          $Res Function(FirestoreSearchEvent) then) =
      _$FirestoreSearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FirestoreSearchEventCopyWithImpl<$Res>
    implements $FirestoreSearchEventCopyWith<$Res> {
  _$FirestoreSearchEventCopyWithImpl(this._value, this._then);

  final FirestoreSearchEvent _value;
  // ignore: unused_field
  final $Res Function(FirestoreSearchEvent) _then;
}

/// @nodoc
abstract class _$SearchTermChangedCopyWith<$Res> {
  factory _$SearchTermChangedCopyWith(
          _SearchTermChanged value, $Res Function(_SearchTermChanged) then) =
      __$SearchTermChangedCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class __$SearchTermChangedCopyWithImpl<$Res>
    extends _$FirestoreSearchEventCopyWithImpl<$Res>
    implements _$SearchTermChangedCopyWith<$Res> {
  __$SearchTermChangedCopyWithImpl(
      _SearchTermChanged _value, $Res Function(_SearchTermChanged) _then)
      : super(_value, (v) => _then(v as _SearchTermChanged));

  @override
  _SearchTermChanged get _value => super._value as _SearchTermChanged;

  @override
  $Res call({
    Object query = freezed,
  }) {
    return _then(_SearchTermChanged(
      query: query == freezed ? _value.query : query as String,
    ));
  }
}

/// @nodoc
class _$_SearchTermChanged
    with DiagnosticableTreeMixin
    implements _SearchTermChanged {
  const _$_SearchTermChanged({@required this.query}) : assert(query != null);

  @override
  final String query;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FirestoreSearchEvent.searchTermChanged(query: $query)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'FirestoreSearchEvent.searchTermChanged'))
      ..add(DiagnosticsProperty('query', query));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchTermChanged &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(query);

  @override
  _$SearchTermChangedCopyWith<_SearchTermChanged> get copyWith =>
      __$SearchTermChangedCopyWithImpl<_SearchTermChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result searchTermChanged(String query),
    @required
        Result searchResultCompleted(
            Either<UserSearchFailure, KtList<User>> failureOrUsers),
  }) {
    assert(searchTermChanged != null);
    assert(searchResultCompleted != null);
    return searchTermChanged(query);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result searchTermChanged(String query),
    Result searchResultCompleted(
        Either<UserSearchFailure, KtList<User>> failureOrUsers),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchTermChanged != null) {
      return searchTermChanged(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result searchTermChanged(_SearchTermChanged value),
    @required Result searchResultCompleted(_SearchResultOrFailure value),
  }) {
    assert(searchTermChanged != null);
    assert(searchResultCompleted != null);
    return searchTermChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result searchTermChanged(_SearchTermChanged value),
    Result searchResultCompleted(_SearchResultOrFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchTermChanged != null) {
      return searchTermChanged(this);
    }
    return orElse();
  }
}

abstract class _SearchTermChanged implements FirestoreSearchEvent {
  const factory _SearchTermChanged({@required String query}) =
      _$_SearchTermChanged;

  String get query;
  _$SearchTermChangedCopyWith<_SearchTermChanged> get copyWith;
}

/// @nodoc
abstract class _$SearchResultOrFailureCopyWith<$Res> {
  factory _$SearchResultOrFailureCopyWith(_SearchResultOrFailure value,
          $Res Function(_SearchResultOrFailure) then) =
      __$SearchResultOrFailureCopyWithImpl<$Res>;
  $Res call({Either<UserSearchFailure, KtList<User>> failureOrUsers});
}

/// @nodoc
class __$SearchResultOrFailureCopyWithImpl<$Res>
    extends _$FirestoreSearchEventCopyWithImpl<$Res>
    implements _$SearchResultOrFailureCopyWith<$Res> {
  __$SearchResultOrFailureCopyWithImpl(_SearchResultOrFailure _value,
      $Res Function(_SearchResultOrFailure) _then)
      : super(_value, (v) => _then(v as _SearchResultOrFailure));

  @override
  _SearchResultOrFailure get _value => super._value as _SearchResultOrFailure;

  @override
  $Res call({
    Object failureOrUsers = freezed,
  }) {
    return _then(_SearchResultOrFailure(
      failureOrUsers: failureOrUsers == freezed
          ? _value.failureOrUsers
          : failureOrUsers as Either<UserSearchFailure, KtList<User>>,
    ));
  }
}

/// @nodoc
class _$_SearchResultOrFailure
    with DiagnosticableTreeMixin
    implements _SearchResultOrFailure {
  const _$_SearchResultOrFailure({@required this.failureOrUsers})
      : assert(failureOrUsers != null);

  @override
  final Either<UserSearchFailure, KtList<User>> failureOrUsers;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FirestoreSearchEvent.searchResultCompleted(failureOrUsers: $failureOrUsers)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'FirestoreSearchEvent.searchResultCompleted'))
      ..add(DiagnosticsProperty('failureOrUsers', failureOrUsers));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchResultOrFailure &&
            (identical(other.failureOrUsers, failureOrUsers) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrUsers, failureOrUsers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrUsers);

  @override
  _$SearchResultOrFailureCopyWith<_SearchResultOrFailure> get copyWith =>
      __$SearchResultOrFailureCopyWithImpl<_SearchResultOrFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result searchTermChanged(String query),
    @required
        Result searchResultCompleted(
            Either<UserSearchFailure, KtList<User>> failureOrUsers),
  }) {
    assert(searchTermChanged != null);
    assert(searchResultCompleted != null);
    return searchResultCompleted(failureOrUsers);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result searchTermChanged(String query),
    Result searchResultCompleted(
        Either<UserSearchFailure, KtList<User>> failureOrUsers),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchResultCompleted != null) {
      return searchResultCompleted(failureOrUsers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result searchTermChanged(_SearchTermChanged value),
    @required Result searchResultCompleted(_SearchResultOrFailure value),
  }) {
    assert(searchTermChanged != null);
    assert(searchResultCompleted != null);
    return searchResultCompleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result searchTermChanged(_SearchTermChanged value),
    Result searchResultCompleted(_SearchResultOrFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchResultCompleted != null) {
      return searchResultCompleted(this);
    }
    return orElse();
  }
}

abstract class _SearchResultOrFailure implements FirestoreSearchEvent {
  const factory _SearchResultOrFailure(
          {@required Either<UserSearchFailure, KtList<User>> failureOrUsers}) =
      _$_SearchResultOrFailure;

  Either<UserSearchFailure, KtList<User>> get failureOrUsers;
  _$SearchResultOrFailureCopyWith<_SearchResultOrFailure> get copyWith;
}

/// @nodoc
class _$FirestoreSearchStateTearOff {
  const _$FirestoreSearchStateTearOff();

// ignore: unused_element
  _SeachEmptyE searchEmpty() {
    return const _SeachEmptyE();
  }

// ignore: unused_element
  _SeachLoadingE searchLoading() {
    return const _SeachLoadingE();
  }

// ignore: unused_element
  _SeachSuccessE searchSuccessfull({@required KtList<User> users}) {
    return _SeachSuccessE(
      users: users,
    );
  }

// ignore: unused_element
  _SeachFailure searchFailure({@required UserSearchFailure failure}) {
    return _SeachFailure(
      failure: failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FirestoreSearchState = _$FirestoreSearchStateTearOff();

/// @nodoc
mixin _$FirestoreSearchState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result searchEmpty(),
    @required Result searchLoading(),
    @required Result searchSuccessfull(KtList<User> users),
    @required Result searchFailure(UserSearchFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result searchEmpty(),
    Result searchLoading(),
    Result searchSuccessfull(KtList<User> users),
    Result searchFailure(UserSearchFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result searchEmpty(_SeachEmptyE value),
    @required Result searchLoading(_SeachLoadingE value),
    @required Result searchSuccessfull(_SeachSuccessE value),
    @required Result searchFailure(_SeachFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result searchEmpty(_SeachEmptyE value),
    Result searchLoading(_SeachLoadingE value),
    Result searchSuccessfull(_SeachSuccessE value),
    Result searchFailure(_SeachFailure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $FirestoreSearchStateCopyWith<$Res> {
  factory $FirestoreSearchStateCopyWith(FirestoreSearchState value,
          $Res Function(FirestoreSearchState) then) =
      _$FirestoreSearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FirestoreSearchStateCopyWithImpl<$Res>
    implements $FirestoreSearchStateCopyWith<$Res> {
  _$FirestoreSearchStateCopyWithImpl(this._value, this._then);

  final FirestoreSearchState _value;
  // ignore: unused_field
  final $Res Function(FirestoreSearchState) _then;
}

/// @nodoc
abstract class _$SeachEmptyECopyWith<$Res> {
  factory _$SeachEmptyECopyWith(
          _SeachEmptyE value, $Res Function(_SeachEmptyE) then) =
      __$SeachEmptyECopyWithImpl<$Res>;
}

/// @nodoc
class __$SeachEmptyECopyWithImpl<$Res>
    extends _$FirestoreSearchStateCopyWithImpl<$Res>
    implements _$SeachEmptyECopyWith<$Res> {
  __$SeachEmptyECopyWithImpl(
      _SeachEmptyE _value, $Res Function(_SeachEmptyE) _then)
      : super(_value, (v) => _then(v as _SeachEmptyE));

  @override
  _SeachEmptyE get _value => super._value as _SeachEmptyE;
}

/// @nodoc
class _$_SeachEmptyE with DiagnosticableTreeMixin implements _SeachEmptyE {
  const _$_SeachEmptyE();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FirestoreSearchState.searchEmpty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FirestoreSearchState.searchEmpty'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SeachEmptyE);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result searchEmpty(),
    @required Result searchLoading(),
    @required Result searchSuccessfull(KtList<User> users),
    @required Result searchFailure(UserSearchFailure failure),
  }) {
    assert(searchEmpty != null);
    assert(searchLoading != null);
    assert(searchSuccessfull != null);
    assert(searchFailure != null);
    return searchEmpty();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result searchEmpty(),
    Result searchLoading(),
    Result searchSuccessfull(KtList<User> users),
    Result searchFailure(UserSearchFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchEmpty != null) {
      return searchEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result searchEmpty(_SeachEmptyE value),
    @required Result searchLoading(_SeachLoadingE value),
    @required Result searchSuccessfull(_SeachSuccessE value),
    @required Result searchFailure(_SeachFailure value),
  }) {
    assert(searchEmpty != null);
    assert(searchLoading != null);
    assert(searchSuccessfull != null);
    assert(searchFailure != null);
    return searchEmpty(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result searchEmpty(_SeachEmptyE value),
    Result searchLoading(_SeachLoadingE value),
    Result searchSuccessfull(_SeachSuccessE value),
    Result searchFailure(_SeachFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchEmpty != null) {
      return searchEmpty(this);
    }
    return orElse();
  }
}

abstract class _SeachEmptyE implements FirestoreSearchState {
  const factory _SeachEmptyE() = _$_SeachEmptyE;
}

/// @nodoc
abstract class _$SeachLoadingECopyWith<$Res> {
  factory _$SeachLoadingECopyWith(
          _SeachLoadingE value, $Res Function(_SeachLoadingE) then) =
      __$SeachLoadingECopyWithImpl<$Res>;
}

/// @nodoc
class __$SeachLoadingECopyWithImpl<$Res>
    extends _$FirestoreSearchStateCopyWithImpl<$Res>
    implements _$SeachLoadingECopyWith<$Res> {
  __$SeachLoadingECopyWithImpl(
      _SeachLoadingE _value, $Res Function(_SeachLoadingE) _then)
      : super(_value, (v) => _then(v as _SeachLoadingE));

  @override
  _SeachLoadingE get _value => super._value as _SeachLoadingE;
}

/// @nodoc
class _$_SeachLoadingE with DiagnosticableTreeMixin implements _SeachLoadingE {
  const _$_SeachLoadingE();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FirestoreSearchState.searchLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FirestoreSearchState.searchLoading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SeachLoadingE);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result searchEmpty(),
    @required Result searchLoading(),
    @required Result searchSuccessfull(KtList<User> users),
    @required Result searchFailure(UserSearchFailure failure),
  }) {
    assert(searchEmpty != null);
    assert(searchLoading != null);
    assert(searchSuccessfull != null);
    assert(searchFailure != null);
    return searchLoading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result searchEmpty(),
    Result searchLoading(),
    Result searchSuccessfull(KtList<User> users),
    Result searchFailure(UserSearchFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchLoading != null) {
      return searchLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result searchEmpty(_SeachEmptyE value),
    @required Result searchLoading(_SeachLoadingE value),
    @required Result searchSuccessfull(_SeachSuccessE value),
    @required Result searchFailure(_SeachFailure value),
  }) {
    assert(searchEmpty != null);
    assert(searchLoading != null);
    assert(searchSuccessfull != null);
    assert(searchFailure != null);
    return searchLoading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result searchEmpty(_SeachEmptyE value),
    Result searchLoading(_SeachLoadingE value),
    Result searchSuccessfull(_SeachSuccessE value),
    Result searchFailure(_SeachFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchLoading != null) {
      return searchLoading(this);
    }
    return orElse();
  }
}

abstract class _SeachLoadingE implements FirestoreSearchState {
  const factory _SeachLoadingE() = _$_SeachLoadingE;
}

/// @nodoc
abstract class _$SeachSuccessECopyWith<$Res> {
  factory _$SeachSuccessECopyWith(
          _SeachSuccessE value, $Res Function(_SeachSuccessE) then) =
      __$SeachSuccessECopyWithImpl<$Res>;
  $Res call({KtList<User> users});
}

/// @nodoc
class __$SeachSuccessECopyWithImpl<$Res>
    extends _$FirestoreSearchStateCopyWithImpl<$Res>
    implements _$SeachSuccessECopyWith<$Res> {
  __$SeachSuccessECopyWithImpl(
      _SeachSuccessE _value, $Res Function(_SeachSuccessE) _then)
      : super(_value, (v) => _then(v as _SeachSuccessE));

  @override
  _SeachSuccessE get _value => super._value as _SeachSuccessE;

  @override
  $Res call({
    Object users = freezed,
  }) {
    return _then(_SeachSuccessE(
      users: users == freezed ? _value.users : users as KtList<User>,
    ));
  }
}

/// @nodoc
class _$_SeachSuccessE with DiagnosticableTreeMixin implements _SeachSuccessE {
  const _$_SeachSuccessE({@required this.users}) : assert(users != null);

  @override
  final KtList<User> users;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FirestoreSearchState.searchSuccessfull(users: $users)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'FirestoreSearchState.searchSuccessfull'))
      ..add(DiagnosticsProperty('users', users));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SeachSuccessE &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(users);

  @override
  _$SeachSuccessECopyWith<_SeachSuccessE> get copyWith =>
      __$SeachSuccessECopyWithImpl<_SeachSuccessE>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result searchEmpty(),
    @required Result searchLoading(),
    @required Result searchSuccessfull(KtList<User> users),
    @required Result searchFailure(UserSearchFailure failure),
  }) {
    assert(searchEmpty != null);
    assert(searchLoading != null);
    assert(searchSuccessfull != null);
    assert(searchFailure != null);
    return searchSuccessfull(users);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result searchEmpty(),
    Result searchLoading(),
    Result searchSuccessfull(KtList<User> users),
    Result searchFailure(UserSearchFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchSuccessfull != null) {
      return searchSuccessfull(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result searchEmpty(_SeachEmptyE value),
    @required Result searchLoading(_SeachLoadingE value),
    @required Result searchSuccessfull(_SeachSuccessE value),
    @required Result searchFailure(_SeachFailure value),
  }) {
    assert(searchEmpty != null);
    assert(searchLoading != null);
    assert(searchSuccessfull != null);
    assert(searchFailure != null);
    return searchSuccessfull(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result searchEmpty(_SeachEmptyE value),
    Result searchLoading(_SeachLoadingE value),
    Result searchSuccessfull(_SeachSuccessE value),
    Result searchFailure(_SeachFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchSuccessfull != null) {
      return searchSuccessfull(this);
    }
    return orElse();
  }
}

abstract class _SeachSuccessE implements FirestoreSearchState {
  const factory _SeachSuccessE({@required KtList<User> users}) =
      _$_SeachSuccessE;

  KtList<User> get users;
  _$SeachSuccessECopyWith<_SeachSuccessE> get copyWith;
}

/// @nodoc
abstract class _$SeachFailureCopyWith<$Res> {
  factory _$SeachFailureCopyWith(
          _SeachFailure value, $Res Function(_SeachFailure) then) =
      __$SeachFailureCopyWithImpl<$Res>;
  $Res call({UserSearchFailure failure});

  $UserSearchFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$SeachFailureCopyWithImpl<$Res>
    extends _$FirestoreSearchStateCopyWithImpl<$Res>
    implements _$SeachFailureCopyWith<$Res> {
  __$SeachFailureCopyWithImpl(
      _SeachFailure _value, $Res Function(_SeachFailure) _then)
      : super(_value, (v) => _then(v as _SeachFailure));

  @override
  _SeachFailure get _value => super._value as _SeachFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_SeachFailure(
      failure:
          failure == freezed ? _value.failure : failure as UserSearchFailure,
    ));
  }

  @override
  $UserSearchFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $UserSearchFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_SeachFailure with DiagnosticableTreeMixin implements _SeachFailure {
  const _$_SeachFailure({@required this.failure}) : assert(failure != null);

  @override
  final UserSearchFailure failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FirestoreSearchState.searchFailure(failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FirestoreSearchState.searchFailure'))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SeachFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$SeachFailureCopyWith<_SeachFailure> get copyWith =>
      __$SeachFailureCopyWithImpl<_SeachFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result searchEmpty(),
    @required Result searchLoading(),
    @required Result searchSuccessfull(KtList<User> users),
    @required Result searchFailure(UserSearchFailure failure),
  }) {
    assert(searchEmpty != null);
    assert(searchLoading != null);
    assert(searchSuccessfull != null);
    assert(searchFailure != null);
    return searchFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result searchEmpty(),
    Result searchLoading(),
    Result searchSuccessfull(KtList<User> users),
    Result searchFailure(UserSearchFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchFailure != null) {
      return searchFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result searchEmpty(_SeachEmptyE value),
    @required Result searchLoading(_SeachLoadingE value),
    @required Result searchSuccessfull(_SeachSuccessE value),
    @required Result searchFailure(_SeachFailure value),
  }) {
    assert(searchEmpty != null);
    assert(searchLoading != null);
    assert(searchSuccessfull != null);
    assert(searchFailure != null);
    return searchFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result searchEmpty(_SeachEmptyE value),
    Result searchLoading(_SeachLoadingE value),
    Result searchSuccessfull(_SeachSuccessE value),
    Result searchFailure(_SeachFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchFailure != null) {
      return searchFailure(this);
    }
    return orElse();
  }
}

abstract class _SeachFailure implements FirestoreSearchState {
  const factory _SeachFailure({@required UserSearchFailure failure}) =
      _$_SeachFailure;

  UserSearchFailure get failure;
  _$SeachFailureCopyWith<_SeachFailure> get copyWith;
}
