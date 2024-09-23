import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_7/src/cubit/public_cubit/public_cubit.dart';
import 'package:project_7/src/helper/colors.dart';
import 'package:project_7/src/helper/functions.dart';
import 'package:project_7/src/screens/project/project_screen.dart';
import 'package:project_7/src/screens/public/search_screen.dart';
import 'package:project_7/src/widgits/custom_card_project.dart';
import 'package:project_7/src/widgits/custom_loading.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:project_7/src/widgits/highlights.dart';

// Done Snackbar

class PublicScreen extends StatelessWidget {
  const PublicScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PublicCubit(),
      child: Builder(builder: (context) {
        Color color = Colors.black;
        final publicCubit = context.read<PublicCubit>();

// we need to fix it here
        loading() async {
          try {
            await Future.delayed(const Duration(seconds: 3));
            await publicCubit.loadPublicProject();
          } catch (error) {
            showAlertSnackBar(
                color: color,
                context: context,
                title: error.toString(),
                colorStatus: color.uncompletedColor);
          }
        }

        loading();
        int? value;
        return BlocListener<PublicCubit, PublicState>(
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
            }
          },
          child: Scaffold(
            body: SafeArea(
              bottom: false,
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SearchScreen()));
                          },
                          child: const Text("search")),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                                "Highlights")),
                      ),
                      BlocBuilder<PublicCubit, PublicState>(
                        builder: (context, state) {
                          return CarouselSlider(
                            items: List.generate(
                                publicCubit.publicProject.length, (index) {
                              return Highlights(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ProjectScreen(
                                          userProject:
                                              publicCubit.publicProject[index],
                                        ),
                                      ),
                                    );
                                  },
                                  imageSrc: publicCubit.publicProject[index]
                                          .imagesProject!.isNotEmpty
                                      ? publicCubit.publicProject[index]
                                          .imagesProject![0].url
                                      : "",
                                  projectTitle: publicCubit
                                          .publicProject[index].projectName ??
                                      "TBD",
                                  bootcamp: publicCubit
                                          .publicProject[index].bootcampName ??
                                      "there no bootcamp");
                            }),
                            options: CarouselOptions(
                              autoPlay: false,
                              enlargeCenterPage: true,
                              viewportFraction: 0.9,
                              aspectRatio: 2,
                              initialPage: 3,
                            ),
                          );
                        },
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 10,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24),
                              "Projects:"),
                        ),
                      ),
                      BlocBuilder<PublicCubit, PublicState>(
                        builder: (context, state) {
                          return SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                  children: List<Widget>.generate(
                                      publicCubit.bootCamp.length, (int index) {
                                return Container(
                                  margin: const EdgeInsets.all(19),
                                  child: ChoiceChip(
                                    checkmarkColor: Colors.red,
                                    label: Text(
                                        publicCubit.bootCamp.elementAt(index)),
                                    selected: value == index,
                                    onSelected: (bool selected) async {
                                      value = selected ? index : null;
                                      log(value.toString());
                                      await publicCubit.filtter(value);
                                    },
                                  ),
                                );
                              }).toList()));
                        },
                      ),
                      BlocBuilder<PublicCubit, PublicState>(
                        builder: (context, state) {
                          if (state is SuccessState ||
                              state is FailedState ||
                              state is PublicInitial) {
                            return ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount:
                                  publicCubit.publicProjectFillterd.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ProjectScreen(
                                          userProject: publicCubit
                                              .publicProjectFillterd[index],
                                        ),
                                      ),
                                    );
                                  },
                                  child: CustomCardProject(
                                      supervisorName: "",
                                      projectName:
                                          "${publicCubit.publicProjectFillterd[index].projectName}",
                                      projectDescription:
                                          "${publicCubit.publicProjectFillterd[index].projectDescription}",
                                      projectType:
                                          "${publicCubit.publicProjectFillterd[index].type}",
                                      projectStatus: publicCubit
                                                  .publicProjectFillterd[index]
                                                  .presentationDate !=
                                              null
                                          ? "COMPLETED"
                                          : "UNCOMPLETED",
                                      colorStatus: publicCubit
                                                  .publicProjectFillterd[index]
                                                  .presentationDate !=
                                              null
                                          ? color.completedColor
                                          : color.uncompletedColor,
                                      projectDaysleft: "20 days left",
                                      isSelectedTeamMember: publicCubit
                                              .publicProjectFillterd[index]
                                              .membersProject!
                                              .isNotEmpty
                                          ? true
                                          : false),
                                );
                              },
                            );
                          }
                          return const SizedBox();
                        },
                      )
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
