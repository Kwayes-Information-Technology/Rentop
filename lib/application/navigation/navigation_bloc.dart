import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rentop/infrastructure/core/assets.dart';
import 'package:rentop/presentation/favourite/favourite_screen.dart';
import 'package:rentop/presentation/home/home_screen.dart';
import 'package:rentop/presentation/messages/messages_screen.dart';
import 'package:rentop/presentation/more/more_screen.dart';
import 'package:rentop/presentation/search/search_screen.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';
part 'navigation_bloc.freezed.dart';

@injectable
class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(NavigationState.initial());

  @override
  Stream<NavigationState> mapEventToState(NavigationEvent event) async* {
    yield* event.map(
      selectedIndexChanged: (e) async* {
        yield state.copyWith(
          selectedIndex: e.index,
        );
      },
    );
  }
}
