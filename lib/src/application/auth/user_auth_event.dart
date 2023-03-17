part of 'user_auth_bloc.dart';

@freezed
class UserAuthEvent with _$UserAuthEvent {
  const factory UserAuthEvent.signOutRequested() = SignOutRequested;
  const factory UserAuthEvent.googleSignInRequested() = GoogleSignInRequested;
}
