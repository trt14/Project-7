import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_7/src/cubit/home_navigation/home_navigation_cubit.dart';

class HomeNavigation extends StatelessWidget {
  const HomeNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeNavigationCubit(),
      child: Builder(builder: (context) {
        final homeNavigation = context.read<HomeNavigationCubit>();
        return Scaffold(
          body: BlocBuilder<HomeNavigationCubit, HomeNavigationState>(
            builder: (context, state) {
              return homeNavigation.screens[homeNavigation.currentPageIndex];
            },
          ),
          bottomNavigationBar:
              BlocBuilder<HomeNavigationCubit, HomeNavigationState>(
            builder: (context, state) {
              return NavigationBar(
                selectedIndex: homeNavigation.currentPageIndex,
                onDestinationSelected: (int index) {
                  homeNavigation.navigate(index);
                },
                destinations: const <Widget>[
                  NavigationDestination(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.explore),
                    label: 'Explore',
                  ),
                ],
              );
            },
          ),
        );
      }),
    );
  }
}
