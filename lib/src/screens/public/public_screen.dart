import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_7/src/cubit/public_cubit/public_cubit.dart';
import 'package:project_7/src/helper/colors.dart';
import 'package:project_7/src/helper/functions.dart';
import 'package:project_7/src/models/project/project_model.dart';
import 'package:project_7/src/screens/project/project_screen.dart';
import 'package:project_7/src/widgits/custom_card_project.dart';
import 'package:project_7/src/widgits/custom_loading.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:project_7/src/widgits/highlights.dart';

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
          child: SafeArea(
            bottom: false,
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
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
                        return ListOfHighlights(
                            publicProjects:
                                publicCubit.projectDataLayer.publicProjects);
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
                        return ListOfProjects(
                            publicProjectFillterd: publicCubit
                                .projectDataLayer.publicProjectFillterd,
                            color: color);
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}

class ListOfHighlights extends StatelessWidget {
  const ListOfHighlights({
    super.key,
    required this.publicProjects,
  });

  final List<ProjectModel> publicProjects;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: List.generate(publicProjects.length, (index) {
        return Highlights(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProjectScreen(
                    userProject: publicProjects[index],
                  ),
                ),
              );
            },
            imageSrc: publicProjects[index].imagesProject!.isNotEmpty
                ? publicProjects[index].imagesProject![0].url
                : "",
            projectTitle: publicProjects[index].projectName ?? "TBD",
            bootcamp:
                publicProjects[index].bootcampName ?? "there no bootcamp");
      }),
      options: CarouselOptions(
        autoPlay: false,
        enlargeCenterPage: true,
        viewportFraction: 0.9,
        aspectRatio: 2,
        initialPage: 3,
      ),
    );
  }
}

class ListOfProjects extends StatelessWidget {
  const ListOfProjects({
    super.key,
    required this.publicProjectFillterd,
    required this.color,
  });

  final List<ProjectModel> publicProjectFillterd;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: publicProjectFillterd.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProjectScreen(
                  userProject: publicProjectFillterd[index],
                ),
              ),
            );
          },
          child: CustomCardProject(
              supervisorName: "",
              projectName: "${publicProjectFillterd[index].projectName}",
              projectDescription:
                  "${publicProjectFillterd[index].projectDescription}",
              projectType: "${publicProjectFillterd[index].type}",
              projectStatus:
                  publicProjectFillterd[index].presentationDate != null
                      ? "COMPLETED"
                      : "UNCOMPLETED",
              colorStatus: publicProjectFillterd[index].presentationDate != null
                  ? color.completedColor
                  : color.uncompletedColor,
              projectDaysleft: "20 days left",
              isSelectedTeamMember:
                  publicProjectFillterd[index].membersProject!.isNotEmpty
                      ? true
                      : false),
        );
      },
    );
  }
}
