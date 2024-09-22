import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';
import 'package:project_7/src/data_layer/user_data_layer.dart';
import 'package:project_7/src/networking/networking_api.dart';

part 'review_state.dart';

class ReviewCubit extends Cubit<ReviewState> {
  int idea = 0;
  int design = 0;
  int tools = 0;
  int practices = 0;
  int presentation = 0;
  int investment = 0;
  TextEditingController notesController = TextEditingController();
  final userDataLayer = GetIt.I.get<UserDataLayer>();
  final api = NetworkingApi();
  ReviewCubit() : super(ReviewInitial());
}
