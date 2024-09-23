import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';
import 'package:project_7/src/data_layer/project_data_layer.dart';
import 'package:project_7/src/models/project/project_model.dart';
import 'package:project_7/src/networking/networking_api.dart';
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
