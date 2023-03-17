import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/repos/auth_repositary.dart';

part 'user_auth_event.dart';
part 'user_auth_state.dart';
part 'user_auth_bloc.freezed.dart';

class UserAuthBloc extends Bloc<UserAuthEvent, UserAuthState> {
  final AuthRepository authRepository;
  UserAuthBloc({required this.authRepository})
      : super(const UnAuthenticated()) {
    on<GoogleSignInRequested>((event, emit) async {
      emit(const LoadingAuth());
      try {
        await authRepository.signInWithGoogle();
        emit(const Authenticated());
      } catch (e) {
        emit(AuthError(
          error: e.toString(),
        ));
        emit(const UnAuthenticated());
      }
    });

    on<SignOutRequested>((event, emit) async {
      emit(const LoadingAuth());
      await authRepository.signOut();
      emit(const UnAuthenticated());
    });
  }
}
