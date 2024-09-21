import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:project_7/src/cubit/search_cubit/search_cubit.dart';
import 'package:project_7/src/helper/colors.dart';
import 'package:project_7/src/screens/project/project_screen.dart';
import 'package:project_7/src/widgits/custom_card_project.dart';
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
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.error.toString())));
            }
            if (state is SuccessState) {
              // Navigator.pop(context);
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
                                  children: [
                                    SizedBox(
                                      width: 200,
                                      child: CustomTextField(
                                        controller: searchCubit.fromController,
                                        title: "from",
                                        readOnly: true,
                                        color: color.primaryColor,
                                      ),
                                    ),
                                    TextButton(
                                        onPressed: () async {
                                          DateTime? newDate =
                                              await showDatePicker(
                                            context: context,
                                            initialDate: DateTime.now(),
                                            firstDate: DateTime(2024),
                                            lastDate: DateTime.now(),
                                          );
                                          if (newDate != null) {
                                            searchCubit.fromController.text =
                                                DateFormat('dd/MM/yyyy')
                                                    .format(newDate)
                                                    .toString();
                                          }
                                        },
                                        child: const Text("Start date")),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 200,
                                      child: CustomTextField(
                                        controller: searchCubit.toController,
                                        title: "to",
                                        readOnly: true,
                                        color: color.primaryColor,
                                      ),
                                    ),
                                    TextButton(
                                        onPressed: () async {
                                          DateTime? newDate =
                                              await showDatePicker(
                                            context: context,
                                            initialDate: DateTime.now(),
                                            firstDate: DateTime(2024),
                                            lastDate: DateTime.now(),
                                          );
                                          if (newDate != null) {
                                            searchCubit.toController.text =
                                                DateFormat('dd/MM/yyyy')
                                                    .format(newDate)
                                                    .toString();
                                          }
                                        },
                                        child: const Text("End date"))
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
