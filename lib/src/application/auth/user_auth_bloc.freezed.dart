// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserAuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signOutRequested,
    required TResult Function() googleSignInRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signOutRequested,
    TResult? Function()? googleSignInRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOutRequested,
    TResult Function()? googleSignInRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignOutRequested value) signOutRequested,
    required TResult Function(GoogleSignInRequested value)
        googleSignInRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignOutRequested value)? signOutRequested,
    TResult? Function(GoogleSignInRequested value)? googleSignInRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignOutRequested value)? signOutRequested,
    TResult Function(GoogleSignInRequested value)? googleSignInRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAuthEventCopyWith<$Res> {
  factory $UserAuthEventCopyWith(
          UserAuthEvent value, $Res Function(UserAuthEvent) then) =
      _$UserAuthEventCopyWithImpl<$Res, UserAuthEvent>;
}

/// @nodoc
class _$UserAuthEventCopyWithImpl<$Res, $Val extends UserAuthEvent>
    implements $UserAuthEventCopyWith<$Res> {
  _$UserAuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignOutRequestedCopyWith<$Res> {
  factory _$$SignOutRequestedCopyWith(
          _$SignOutRequested value, $Res Function(_$SignOutRequested) then) =
      __$$SignOutRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutRequestedCopyWithImpl<$Res>
    extends _$UserAuthEventCopyWithImpl<$Res, _$SignOutRequested>
    implements _$$SignOutRequestedCopyWith<$Res> {
  __$$SignOutRequestedCopyWithImpl(
      _$SignOutRequested _value, $Res Function(_$SignOutRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOutRequested implements SignOutRequested {
  const _$SignOutRequested();

  @override
  String toString() {
    return 'UserAuthEvent.signOutRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signOutRequested,
    required TResult Function() googleSignInRequested,
  }) {
    return signOutRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signOutRequested,
    TResult? Function()? googleSignInRequested,
  }) {
    return signOutRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOutRequested,
    TResult Function()? googleSignInRequested,
    required TResult orElse(),
  }) {
    if (signOutRequested != null) {
      return signOutRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignOutRequested value) signOutRequested,
    required TResult Function(GoogleSignInRequested value)
        googleSignInRequested,
  }) {
    return signOutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignOutRequested value)? signOutRequested,
    TResult? Function(GoogleSignInRequested value)? googleSignInRequested,
  }) {
    return signOutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignOutRequested value)? signOutRequested,
    TResult Function(GoogleSignInRequested value)? googleSignInRequested,
    required TResult orElse(),
  }) {
    if (signOutRequested != null) {
      return signOutRequested(this);
    }
    return orElse();
  }
}

abstract class SignOutRequested implements UserAuthEvent {
  const factory SignOutRequested() = _$SignOutRequested;
}

/// @nodoc
abstract class _$$GoogleSignInRequestedCopyWith<$Res> {
  factory _$$GoogleSignInRequestedCopyWith(_$GoogleSignInRequested value,
          $Res Function(_$GoogleSignInRequested) then) =
      __$$GoogleSignInRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoogleSignInRequestedCopyWithImpl<$Res>
    extends _$UserAuthEventCopyWithImpl<$Res, _$GoogleSignInRequested>
    implements _$$GoogleSignInRequestedCopyWith<$Res> {
  __$$GoogleSignInRequestedCopyWithImpl(_$GoogleSignInRequested _value,
      $Res Function(_$GoogleSignInRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GoogleSignInRequested implements GoogleSignInRequested {
  const _$GoogleSignInRequested();

  @override
  String toString() {
    return 'UserAuthEvent.googleSignInRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GoogleSignInRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signOutRequested,
    required TResult Function() googleSignInRequested,
  }) {
    return googleSignInRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signOutRequested,
    TResult? Function()? googleSignInRequested,
  }) {
    return googleSignInRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOutRequested,
    TResult Function()? googleSignInRequested,
    required TResult orElse(),
  }) {
    if (googleSignInRequested != null) {
      return googleSignInRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignOutRequested value) signOutRequested,
    required TResult Function(GoogleSignInRequested value)
        googleSignInRequested,
  }) {
    return googleSignInRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignOutRequested value)? signOutRequested,
    TResult? Function(GoogleSignInRequested value)? googleSignInRequested,
  }) {
    return googleSignInRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignOutRequested value)? signOutRequested,
    TResult Function(GoogleSignInRequested value)? googleSignInRequested,
    required TResult orElse(),
  }) {
    if (googleSignInRequested != null) {
      return googleSignInRequested(this);
    }
    return orElse();
  }
}

abstract class GoogleSignInRequested implements UserAuthEvent {
  const factory GoogleSignInRequested() = _$GoogleSignInRequested;
}

/// @nodoc
mixin _$UserAuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unAuthenticated,
    required TResult Function() loadingAuth,
    required TResult Function() authenticated,
    required TResult Function(String error) authError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unAuthenticated,
    TResult? Function()? loadingAuth,
    TResult? Function()? authenticated,
    TResult? Function(String error)? authError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unAuthenticated,
    TResult Function()? loadingAuth,
    TResult Function()? authenticated,
    TResult Function(String error)? authError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UnAuthenticated value) unAuthenticated,
    required TResult Function(LoadingAuth value) loadingAuth,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(AuthError value) authError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UnAuthenticated value)? unAuthenticated,
    TResult? Function(LoadingAuth value)? loadingAuth,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(AuthError value)? authError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(LoadingAuth value)? loadingAuth,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AuthError value)? authError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAuthStateCopyWith<$Res> {
  factory $UserAuthStateCopyWith(
          UserAuthState value, $Res Function(UserAuthState) then) =
      _$UserAuthStateCopyWithImpl<$Res, UserAuthState>;
}

/// @nodoc
class _$UserAuthStateCopyWithImpl<$Res, $Val extends UserAuthState>
    implements $UserAuthStateCopyWith<$Res> {
  _$UserAuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$UserAuthStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'UserAuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unAuthenticated,
    required TResult Function() loadingAuth,
    required TResult Function() authenticated,
    required TResult Function(String error) authError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unAuthenticated,
    TResult? Function()? loadingAuth,
    TResult? Function()? authenticated,
    TResult? Function(String error)? authError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unAuthenticated,
    TResult Function()? loadingAuth,
    TResult Function()? authenticated,
    TResult Function(String error)? authError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UnAuthenticated value) unAuthenticated,
    required TResult Function(LoadingAuth value) loadingAuth,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(AuthError value) authError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UnAuthenticated value)? unAuthenticated,
    TResult? Function(LoadingAuth value)? loadingAuth,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(AuthError value)? authError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(LoadingAuth value)? loadingAuth,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AuthError value)? authError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserAuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$UnAuthenticatedCopyWith<$Res> {
  factory _$$UnAuthenticatedCopyWith(
          _$UnAuthenticated value, $Res Function(_$UnAuthenticated) then) =
      __$$UnAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnAuthenticatedCopyWithImpl<$Res>
    extends _$UserAuthStateCopyWithImpl<$Res, _$UnAuthenticated>
    implements _$$UnAuthenticatedCopyWith<$Res> {
  __$$UnAuthenticatedCopyWithImpl(
      _$UnAuthenticated _value, $Res Function(_$UnAuthenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnAuthenticated implements UnAuthenticated {
  const _$UnAuthenticated();

  @override
  String toString() {
    return 'UserAuthState.unAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unAuthenticated,
    required TResult Function() loadingAuth,
    required TResult Function() authenticated,
    required TResult Function(String error) authError,
  }) {
    return unAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unAuthenticated,
    TResult? Function()? loadingAuth,
    TResult? Function()? authenticated,
    TResult? Function(String error)? authError,
  }) {
    return unAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unAuthenticated,
    TResult Function()? loadingAuth,
    TResult Function()? authenticated,
    TResult Function(String error)? authError,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UnAuthenticated value) unAuthenticated,
    required TResult Function(LoadingAuth value) loadingAuth,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(AuthError value) authError,
  }) {
    return unAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UnAuthenticated value)? unAuthenticated,
    TResult? Function(LoadingAuth value)? loadingAuth,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(AuthError value)? authError,
  }) {
    return unAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(LoadingAuth value)? loadingAuth,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AuthError value)? authError,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(this);
    }
    return orElse();
  }
}

abstract class UnAuthenticated implements UserAuthState {
  const factory UnAuthenticated() = _$UnAuthenticated;
}

/// @nodoc
abstract class _$$LoadingAuthCopyWith<$Res> {
  factory _$$LoadingAuthCopyWith(
          _$LoadingAuth value, $Res Function(_$LoadingAuth) then) =
      __$$LoadingAuthCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingAuthCopyWithImpl<$Res>
    extends _$UserAuthStateCopyWithImpl<$Res, _$LoadingAuth>
    implements _$$LoadingAuthCopyWith<$Res> {
  __$$LoadingAuthCopyWithImpl(
      _$LoadingAuth _value, $Res Function(_$LoadingAuth) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingAuth implements LoadingAuth {
  const _$LoadingAuth();

  @override
  String toString() {
    return 'UserAuthState.loadingAuth()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingAuth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unAuthenticated,
    required TResult Function() loadingAuth,
    required TResult Function() authenticated,
    required TResult Function(String error) authError,
  }) {
    return loadingAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unAuthenticated,
    TResult? Function()? loadingAuth,
    TResult? Function()? authenticated,
    TResult? Function(String error)? authError,
  }) {
    return loadingAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unAuthenticated,
    TResult Function()? loadingAuth,
    TResult Function()? authenticated,
    TResult Function(String error)? authError,
    required TResult orElse(),
  }) {
    if (loadingAuth != null) {
      return loadingAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UnAuthenticated value) unAuthenticated,
    required TResult Function(LoadingAuth value) loadingAuth,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(AuthError value) authError,
  }) {
    return loadingAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UnAuthenticated value)? unAuthenticated,
    TResult? Function(LoadingAuth value)? loadingAuth,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(AuthError value)? authError,
  }) {
    return loadingAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(LoadingAuth value)? loadingAuth,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AuthError value)? authError,
    required TResult orElse(),
  }) {
    if (loadingAuth != null) {
      return loadingAuth(this);
    }
    return orElse();
  }
}

abstract class LoadingAuth implements UserAuthState {
  const factory LoadingAuth() = _$LoadingAuth;
}

/// @nodoc
abstract class _$$AuthenticatedCopyWith<$Res> {
  factory _$$AuthenticatedCopyWith(
          _$Authenticated value, $Res Function(_$Authenticated) then) =
      __$$AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticatedCopyWithImpl<$Res>
    extends _$UserAuthStateCopyWithImpl<$Res, _$Authenticated>
    implements _$$AuthenticatedCopyWith<$Res> {
  __$$AuthenticatedCopyWithImpl(
      _$Authenticated _value, $Res Function(_$Authenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Authenticated implements Authenticated {
  const _$Authenticated();

  @override
  String toString() {
    return 'UserAuthState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unAuthenticated,
    required TResult Function() loadingAuth,
    required TResult Function() authenticated,
    required TResult Function(String error) authError,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unAuthenticated,
    TResult? Function()? loadingAuth,
    TResult? Function()? authenticated,
    TResult? Function(String error)? authError,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unAuthenticated,
    TResult Function()? loadingAuth,
    TResult Function()? authenticated,
    TResult Function(String error)? authError,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UnAuthenticated value) unAuthenticated,
    required TResult Function(LoadingAuth value) loadingAuth,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(AuthError value) authError,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UnAuthenticated value)? unAuthenticated,
    TResult? Function(LoadingAuth value)? loadingAuth,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(AuthError value)? authError,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(LoadingAuth value)? loadingAuth,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AuthError value)? authError,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements UserAuthState {
  const factory Authenticated() = _$Authenticated;
}

/// @nodoc
abstract class _$$AuthErrorCopyWith<$Res> {
  factory _$$AuthErrorCopyWith(
          _$AuthError value, $Res Function(_$AuthError) then) =
      __$$AuthErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$AuthErrorCopyWithImpl<$Res>
    extends _$UserAuthStateCopyWithImpl<$Res, _$AuthError>
    implements _$$AuthErrorCopyWith<$Res> {
  __$$AuthErrorCopyWithImpl(
      _$AuthError _value, $Res Function(_$AuthError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AuthError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthError implements AuthError {
  const _$AuthError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'UserAuthState.authError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthErrorCopyWith<_$AuthError> get copyWith =>
      __$$AuthErrorCopyWithImpl<_$AuthError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unAuthenticated,
    required TResult Function() loadingAuth,
    required TResult Function() authenticated,
    required TResult Function(String error) authError,
  }) {
    return authError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unAuthenticated,
    TResult? Function()? loadingAuth,
    TResult? Function()? authenticated,
    TResult? Function(String error)? authError,
  }) {
    return authError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unAuthenticated,
    TResult Function()? loadingAuth,
    TResult Function()? authenticated,
    TResult Function(String error)? authError,
    required TResult orElse(),
  }) {
    if (authError != null) {
      return authError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UnAuthenticated value) unAuthenticated,
    required TResult Function(LoadingAuth value) loadingAuth,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(AuthError value) authError,
  }) {
    return authError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UnAuthenticated value)? unAuthenticated,
    TResult? Function(LoadingAuth value)? loadingAuth,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(AuthError value)? authError,
  }) {
    return authError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(LoadingAuth value)? loadingAuth,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AuthError value)? authError,
    required TResult orElse(),
  }) {
    if (authError != null) {
      return authError(this);
    }
    return orElse();
  }
}

abstract class AuthError implements UserAuthState {
  const factory AuthError({required final String error}) = _$AuthError;

  String get error;
  @JsonKey(ignore: true)
  _$$AuthErrorCopyWith<_$AuthError> get copyWith =>
      throw _privateConstructorUsedError;
}
