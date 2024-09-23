import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_7/src/cubit/search_cubit/search_cubit.dart';
import 'package:project_7/src/helper/colors.dart';
import 'package:project_7/src/helper/functions.dart';
import 'package:project_7/src/models/project/project_model.dart';
import 'package:project_7/src/screens/public/result_screen.dart';
import 'package:project_7/src/widgits/custom_elevated_btn.dart';
import 'package:project_7/src/widgits/custom_loading.dart';
import 'package:project_7/src/widgits/custom_text_field.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(),
      child: Builder(builder: (context) {
        final searchCubit = context.read<SearchCubit>();
        Color color = Colors.black;
        int? type;
        int? bootcamp;
        List<ProjectModel> project = [];
        return BlocListener<SearchCubit, SearchState>(
          listener: (context, state) async {
            if (state is LoadingState) {
              showDialog<String>(
                  context: context,
                  builder: (BuildContext context) =>
                      SizedBox(child: customLoading(context)));
            }

            if (state is FailedState) {
              Navigator.pop(context);
              showAlertSnackBar(
                  color: color,
                  context: context,
                  title: state.error.toString(),
                  colorStatus: color.uncompletedColor);
            }
            if (state is SuccessState) {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultScreen(
                    result: project,
                  ),
                ),
              );
            }
          },
          child: Scaffold(
            body: SafeArea(
              bottom: false,
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: [
                      BlocBuilder<SearchCubit, SearchState>(
                        builder: (context, state) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                CustomTextField(
                                  controller: searchCubit.nameController,
                                  title: "search",
                                  color: color.primaryColor,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 100,
                                      child: CustomTextField(
                                        keyboardType: const TextInputType
                                            .numberWithOptions(),
                                        inputFormatters: [
                                          FilteringTextInputFormatter.digitsOnly
                                        ],
                                        controller: searchCubit.fromController,
                                        title: "from",
                                        color: color.primaryColor,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 100,
                                      child: CustomTextField(
                                        keyboardType: const TextInputType
                                            .numberWithOptions(),
                                        inputFormatters: [
                                          FilteringTextInputFormatter.digitsOnly
                                        ],
                                        controller: searchCubit.toController,
                                        title: "to",
                                        color: color.primaryColor,
                                      ),
                                    ),
                                  ],
                                ),
                                BlocBuilder<SearchCubit, SearchState>(
                                  builder: (context, state) {
                                    return SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                            children: List<Widget>.generate(
                                                searchCubit.bootCamp.length,
                                                (int index) {
                                          return Container(
                                            margin: const EdgeInsets.all(19),
                                            child: ChoiceChip(
                                              checkmarkColor: Colors.red,
                                              label: Text(searchCubit.bootCamp
                                                  .elementAt(index)),
                                              selected: bootcamp == index,
                                              onSelected:
                                                  (bool selected) async {
                                                bootcamp =
                                                    selected ? index : null;
                                                searchCubit.bootcampController
                                                        .text =
                                                    searchCubit.bootCamp
                                                        .elementAt(index);
                                                await searchCubit.setState();
                                              },
                                            ),
                                          );
                                        }).toList()));
                                  },
                                ),
                                BlocBuilder<SearchCubit, SearchState>(
                                  builder: (context, state) {
                                    return SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                            children: List<Widget>.generate(
                                                searchCubit.type.length,
                                                (int index) {
                                          return Container(
                                            margin: const EdgeInsets.all(19),
                                            child: ChoiceChip(
                                              checkmarkColor: Colors.red,
                                              label: Text(searchCubit.type
                                                  .elementAt(index)),
                                              selected: type == index,
                                              onSelected:
                                                  (bool selected) async {
                                                type = selected ? index : null;
                                                log(type.toString());
                                                searchCubit
                                                        .typeController.text =
                                                    searchCubit.type
                                                        .elementAt(index);
                                                await searchCubit.setState();
                                              },
                                            ),
                                          );
                                        }).toList()));
                                  },
                                ),
                                CustomElevatedBTN(
                                  text: "Search",
                                  color: color,
                                  onPressed: () async {
                                    try {
                                      project =
                                          await searchCubit.search() ?? [];
                                    } catch (e) {
                                      log(e.toString());
                                    }
                                  },
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
