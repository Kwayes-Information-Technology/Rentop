part of 'navigation_bloc.dart';

@freezed
class NavigationState with _$NavigationState {
  const factory NavigationState({
    required int selectedIndex,
    required List<Widget> screens,
    required List<String> items,
  }) = _NavigationState;

  factory NavigationState.initial() => const NavigationState(
        selectedIndex: 2,
        screens: [
          SearchScreen(),
          FavouriteScreen(),
          HomeScreen(),
          MessagesScreen(),
          MoreScreen()
        ],
        items: [
          Assets.searchIcon,
          Assets.favoriteIcon,
          Assets.homeIcon,
          Assets.chatIcon,
          Assets.menuIcon,
        ],
      );
}
