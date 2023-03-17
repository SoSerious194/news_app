part of 'user_auth_bloc.dart';

@freezed
class UserAuthState with _$UserAuthState {
  const factory UserAuthState.initial() = _Initial;
  const factory UserAuthState.unAuthenticated() = UnAuthenticated;

  const factory UserAuthState.loadingAuth() = LoadingAuth;

  const factory UserAuthState.authenticated() = Authenticated;
  const factory UserAuthState.authError({
    required String error,
  }) = AuthError;
}
