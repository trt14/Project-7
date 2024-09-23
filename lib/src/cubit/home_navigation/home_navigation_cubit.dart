import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:project_7/src/screens/public/public_screen.dart';
import 'package:project_7/src/screens/public/search_screen.dart';

part 'home_navigation_state.dart';

class HomeNavigationCubit extends Cubit<HomeNavigationState> {
  int currentPageIndex = 0;

  List<Widget> screens = [const PublicScreen(), const SearchScreen()];
  HomeNavigationCubit() : super(HomeNavigationInitial());

  navigate(int index) {
    currentPageIndex = index;
    emit(Navigate());
  }
}
