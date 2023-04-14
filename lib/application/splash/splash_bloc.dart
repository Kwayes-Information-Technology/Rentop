import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rentop/domain/repositories/i_splash_facade.dart';

part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final ISplashFacade _splashFacade;
  SplashBloc(this._splashFacade) : super(const SplashState.initial());

  @override
  Stream<SplashState> mapEventToState(
    SplashEvent event,
  ) async* {
    yield* event.map(
      userCheckRequested: (e) async* {
        final returnUser = await _splashFacade.isReturnUser();
        if (returnUser) {
          yield const SplashState.returnUser();
        } else {
          yield const SplashState.firstTimeUser();
        }
      },
      assignUserAsReturnUser: (e) async* {
        await _splashFacade.assignUserAsReturnUser();
        yield const SplashState.returnUser();
      },
    );
  }
}
