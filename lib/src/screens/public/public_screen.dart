import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_7/src/cubit/public_cubit/public_cubit.dart';
import 'package:project_7/src/helper/colors.dart';
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

        loading() async {
          try {
            await Future.delayed(const Duration(seconds: 3));
            await publicCubit.loadPublicProject();
      
          } catch (error) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(error.toString())));
          }
        }

        loading();

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
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.error.toString())));
            }
            if (state is SuccessState) {
              Navigator.pop(context);
            }
          },
          child: Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: [
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
                              aspectRatio: 2.0,
                              initialPage: 3,
                            ),
                          );
                        },
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 10,
                      ),
                   BlocBuilder<PublicCubit, PublicState>(
                              builder: (context, state) {
                                return BootCampFiltter(
                                  bootCamp: publicCubit.bootCamp,
                                );
                              },
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
                          return Column(
                            children: List.generate(
                                publicCubit.publicProject.length, (index) {
                              return InkWell(
                                onTap: () {
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
                                child: CustomCardProject(
                                    supervisorName: "",
                                    projectName:
                                        "${publicCubit.publicProject[index].projectName}",
                                    projectDescription:
                                        "${publicCubit.publicProject[index].projectDescription}",
                                    projectType:
                                        "${publicCubit.publicProject[index].type}",
                                    projectStatus: publicCubit
                                                .publicProject[index]
                                                .presentationDate !=
                                            null
                                        ? "COMPLETED"
                                        : "UNCOMPLETED",
                                    colorStatus: publicCubit
                                                .publicProject[index]
                                                .presentationDate !=
                                            null
                                        ? color.completedColor
                                        : color.uncompletedColor,
                                    projectDaysleft: "20 days left",
                                    isSelectedTeamMember: publicCubit
                                            .publicProject[index]
                                            .membersProject!
                                            .isNotEmpty
                                        ? true
                                        : false),
                              );
                            }),
                          );
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

class BootCampFiltter extends StatelessWidget {
  const BootCampFiltter({
    super.key,
    required this.bootCamp,
  });
  final Set bootCamp;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: bootCamp.map((category) {
        return Container(
          margin: const EdgeInsets.all(19),
          child: ChoiceChip(
            checkmarkColor: Colors.red,
            label: Text(category),
            selected: false,
          ),
        );
      }).toList()),
    );
  }
}
