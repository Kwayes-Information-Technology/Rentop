import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentop/application/navigation/navigation_bloc.dart';
import 'package:rentop/presentation/widgets/rentop_nav_bar.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BlocBuilder<NavigationBloc, NavigationState>(
        builder: (context, state) {
          return RentopNavBar(
            items: state.items,
            selectedItemIndex: state.selectedIndex,
            onSelectedItem: (index) => context
                .read<NavigationBloc>()
                .add(NavigationEvent.selectedIndexChanged(index)),
          );
        },
      ),
      body: BlocBuilder<NavigationBloc, NavigationState>(
        builder: (context, state) {
          return state.screens[state.selectedIndex];
        },
      ),
    );
  }
}
