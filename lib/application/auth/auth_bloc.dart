import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rentop/domain/repositories/i_auth_facade.dart';
import 'package:rentop/domain/repositories/i_profile_repository.dart';
import 'package:rentop/infrastructure/models/profile.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;
  final IProfileRepository _profileRepository;
  AuthBloc(
    this._authFacade,
    this._profileRepository,
  ) : super(const AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        final userOption = await _authFacade.validateUserToken();
        yield userOption.fold(
          (_) => const AuthState.unauthenticated(),
          (profile) => AuthState.authenticated(profile),
        );
      },
      fetchUserProfileData: (e) async* {
        final user = await _profileRepository.getProfile();
        yield user.fold(
          () => const AuthState.unauthenticated(),
          (profile) => AuthState.authenticated(profile),
        );
      },
      signedOut: (e) async* {
        await _authFacade.signOut();
        yield const AuthState.unauthenticated();
      },
    );
  }
}
