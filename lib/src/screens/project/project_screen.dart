import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project_7/src/cubit/project_cubit/project_cubit.dart';
import 'package:project_7/src/helper/check_logo_type.dart';
import 'package:project_7/src/helper/colors.dart';
import 'package:project_7/src/helper/functions.dart';
import 'package:project_7/src/helper/screen.dart';
import 'package:project_7/src/models/project/member_project_model.dart';
import 'package:project_7/src/models/project/project_model.dart';
import 'package:project_7/src/widgits/custom_elevated_btn.dart';
import 'package:project_7/src/widgits/custom_list_tile.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:project_7/src/widgits/custom_loading.dart';
import 'package:project_7/src/widgits/custom_text_field.dart';
import 'package:project_7/src/widgits/custom_url_icon.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ProjectScreen extends StatelessWidget {
  ProjectScreen({super.key, required this.userProject});
  ProjectModel userProject;

  @override
  Widget build(BuildContext context) {
    Color color = Colors.black;
    return SafeArea(
      bottom: false,
      child: BlocProvider(
        create: (context) => ProjectCubit(),
        child: Builder(builder: (context) {
          final projectCubit = context.read<ProjectCubit>();
          projectCubit.editProjectNameController.text =
              userProject.projectName.toString();

          projectCubit.editProjectDescrController.text =
              userProject.projectDescription.toString();

          return BlocListener<ProjectCubit, ProjectState>(
            listener: (context, state) {
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
                Navigator.pop(context);

                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Update was sucess")));
              }
            },
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: color.secondaryColor,
                automaticallyImplyLeading: false,
                actions: [
                  IconButton(
                    onPressed: () {
                      showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: context.getHeight(value: 0.5),
                            color: color.bgColor,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    "Edit Project",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  CustomTextField(
                                    title: "Project Name",
                                    color: color,
                                    controller:
                                        projectCubit.editProjectNameController,
                                  ),
                                  CustomTextField(
                                    title: "Project Description",
                                    color: color,
                                    controller:
                                        projectCubit.editProjectDescrController,
                                  ),
                                  ElevatedButton(
                                      child: const Text('Edit'),
                                      onPressed: () async {
                                        userProject = await projectCubit
                                            .editProjectNameAndDescription(
                                                project: userProject);
                                      }),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    icon: Icon(
                      Icons.settings,
                      color: color.txtwhiteColor,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Clipboard.setData(
                              ClipboardData(text: userProject.projectId))
                          .then((value) {
                        if (context.mounted) {
                          showAlertSnackBar(
                              color: color,
                              context: context,
                              title: "Project ID has been copied.",
                              colorStatus: color.completedColor);
                        }
                      });
                    },
                    icon: Icon(
                      Icons.copy,
                      color: color.txtwhiteColor,
                    ),
                  ),
                  userProject.allowRating!
                      ? IconButton(
                          onPressed: () {
                            showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => Center(
                                child: SizedBox(
                                  child: Card(
                                    child: QrImageView(
                                      data: userProject.projectId,
                                      version: QrVersions.auto,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                          icon: const Icon(
                            Icons.qr_code,
                            color: Colors.white,
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
              body: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BlocBuilder<ProjectCubit, ProjectState>(
                        builder: (context, state) {
                      if (state is SuccessState ||
                          state is ProjectInitial ||
                          state is FailedState) {
                        return userProject.imagesProject!.isNotEmpty
                            ? Center(
                                child: CarouselSlider(
                                  options: CarouselOptions(
                                    autoPlay: true,
                                    aspectRatio: 2.0,
                                    enlargeCenterPage: true,
                                    enlargeStrategy:
                                        CenterPageEnlargeStrategy.height,
                                  ),
                                  items: userProject.imagesProject!
                                      .map((item) => Center(
                                          child: Image.network(item.url,
                                              fit: BoxFit.cover, width: 1000)))
                                      .toList(),
                                ),
                              )
                            : SizedBox(
                                child: Image.asset(
                                    "assets/images/Designer(1).png",
                                    fit: BoxFit.cover),
                              );
                      }
                      return const SizedBox();
                    }),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: userProject.rating! != 0
                          ? RatingBar.builder(
                              initialRating: (userProject.rating! / 2),
                              minRating: 0,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.assignment,
                                color: color.primaryColor,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            )
                          : const SizedBox(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              BlocBuilder<ProjectCubit, ProjectState>(
                                builder: (context, state) {
                                  if (state is SuccessState ||
                                      state is ProjectInitial ||
                                      state is FailedState) {
                                    return Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          maxLines: 1,
                                          userProject.projectName ?? "Name:TBD",
                                          style: TextStyle(
                                              color: color.primaryColor,
                                              fontSize: 20),
                                        ),
                                        Text(
                                          maxLines: 1,
                                          userProject.bootcampName ??
                                              "BootCamp:TBD",
                                          style: TextStyle(
                                              color: color.primaryColor,
                                              fontSize: 10),
                                        ),
                                      ],
                                    );
                                  }

                                  return const SizedBox();
                                },
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.circle_outlined,
                                    size: 15,
                                    color: color.secondaryColor,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Start Date: ",
                                    style: TextStyle(
                                        color: color.secondaryColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    userProject.startDate ?? "TBD",
                                    style: TextStyle(
                                        color: color.secondaryColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.circle_outlined,
                                    size: 15,
                                    color: color.secondaryColor,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "End Date: ",
                                    style: TextStyle(
                                        color: color.secondaryColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(userProject.endDate ?? "TBD",
                                      style: TextStyle(
                                          color: color.secondaryColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500)),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.circle_outlined,
                                    size: 15,
                                    color: color.secondaryColor,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Presintation Date: ",
                                    style: TextStyle(
                                        color: color.secondaryColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(userProject.presentationDate ?? "TBD",
                                      style: TextStyle(
                                          color: color.secondaryColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500)),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        maxLines: 20,
                        userProject.projectDescription ??
                            "projectDescription: TBD",
                        style: TextStyle(
                            color: color.txtBlack45Color, fontSize: 14),
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.all(8),
                        width: context.getWidth(),
                        alignment: Alignment.center,
                        color: color.secondaryColor,
                        child: Text(
                          "My team",
                          style: TextStyle(
                              color: color.txtwhiteColor, fontSize: 25),
                        )),
                    Container(
                      color: color.txtwhiteColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            width: context.getWidth(value: 80 / 100),
                            height: 100,
                            color: color.txtwhiteColor,
                            child: BlocBuilder<ProjectCubit, ProjectState>(
                              builder: (context, state) {
                                if (state is SuccessState ||
                                    state is ProjectInitial ||
                                    state is FailedState) {
                                  return ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount:
                                          userProject.membersProject?.length,
                                      itemBuilder: (context, index) {
                                        return GestureDetector(
                                          onTap: () {
                                            _dialogBuilder(
                                                context: context,
                                                member: userProject
                                                    .membersProject![index]);
                                          },
                                          child: SizedBox(
                                            width: context.getWidth(value: 0.5),
                                            child: CustomListTile(
                                              title: userProject
                                                  .membersProject![index]
                                                  .firstName
                                                  .toString(),
                                              description: userProject
                                                  .membersProject![index]
                                                  .position,
                                              color: color,
                                            ),
                                          ),
                                        );
                                      });
                                }
                                return const SizedBox();
                              },
                            ),
                          ),
                          projectCubit.userDataLayer.user?.id ==
                                      userProject.userId ||
                                  projectCubit.userDataLayer.user!.role !=
                                      "user"
                              ? IconButton(
                                  onPressed: () async {
                                    try {
                                      addNewMembers(context,
                                          memberIdController:
                                              projectCubit.memberIdController,
                                          positionController:
                                              projectCubit.positionController,
                                          onPressed: () async {
                                        userProject =
                                            await projectCubit.addMemberEvent(
                                                project: userProject);
                                      });
                                    } catch (e) {
                                      log(e.toString());
                                    }
                                  },
                                  icon: Icon(
                                    Icons.person_add,
                                    color: color.primaryColor,
                                  ))
                              : const SizedBox()
                        ],
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.all(8),
                        width: context.getWidth(),
                        alignment: Alignment.center,
                        color: color.secondaryColor,
                        child: Text(
                          "Links",
                          style: TextStyle(
                              color: color.txtwhiteColor, fontSize: 25),
                        )),
                    Container(
                      color: color.txtwhiteColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            width: context.getWidth(value: 80 / 100),
                            height: 100,
                            child: BlocBuilder<ProjectCubit, ProjectState>(
                              builder: (context, state) {
                                if (state is SuccessState ||
                                    state is ProjectInitial ||
                                    state is FailedState) {
                                  return Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: List.generate(
                                      userProject.linksProject?.length ?? 0,
                                      (index) {
                                        return Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: CustomUrlIcon(
                                              url: userProject
                                                  .linksProject![index].url,
                                              img: getLogo(userProject
                                                  .linksProject![index].type),
                                              width: 25),
                                        );
                                      },
                                    ),
                                  );
                                }
                                return const SizedBox();
                              },
                            ),
                          ),
                          IconButton(
                            onPressed: () async {
                              try {
                                addLinkModel(context,
                                    typeController: projectCubit.typeController,
                                    urlController: projectCubit.urlController,
                                    onPressed: () async {
                                  userProject = await projectCubit.addLink(
                                    project: userProject,
                                  );
                                });
                              } catch (e) {
                                log(e.toString());
                              }
                            },
                            icon: Icon(
                              Icons.add_link_sharp,
                              color: color.primaryColor,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        userProject.presentationUrl != null ||
                                userProject.presentationUrl != ""
                            ? BlocBuilder<ProjectCubit, ProjectState>(
                                builder: (context, state) {
                                  if (state is SuccessState ||
                                      state is ProjectInitial ||
                                      state is FailedState) {
                                    return Center(
                                      child: CustomElevatedBTN(
                                        text: "Open Persentation file",
                                        color: color,
                                        onPressed: () {
                                          try {
                                            launchStringUrl(userProject
                                                .presentationUrl
                                                .toString());
                                          } catch (e) {
                                            log(e.toString());
                                          }
                                        },
                                      ),
                                    );
                                  }
                                  return const SizedBox();
                                },
                              )
                            : const SizedBox(),
                        Center(
                          child: CustomElevatedBTN(
                            text: "Upload file",
                            color: color,
                            onPressed: () async {
                              try {
                                FilePickerResult? result =
                                    await FilePicker.platform.pickFiles();

                                if (result != null) {
                                  File file = File(result.files.single.path!);
                                  final fileAsByte = file.readAsBytesSync();
                                  userProject =
                                      await projectCubit.uploadPresentation(
                                          project: userProject,
                                          file: fileAsByte);
                                  log('File picked: ${file.path}');
                                } else {
                                  log('No file selected');
                                }
                              } catch (error) {
                                log('Error picking file: $error');
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Center(
                          child: CustomElevatedBTN(
                            text: "Upload image",
                            color: color,
                            onPressed: () async {
                              List<Uint8List> images = [];
                              try {
                                FilePickerResult? result =
                                    await FilePicker.platform.pickFiles(
                                  allowMultiple: true,
                                  type: FileType.custom,
                                  allowedExtensions: [
                                    'jpg',
                                    'jpeg',
                                    'png',
                                  ],
                                );

                                if (result != null) {
                                  for (PlatformFile file in result.files) {
                                    File selectedFile = File(file.path!);
                                    images.add(selectedFile.readAsBytesSync());
                                  }
                                  userProject = await projectCubit.uploadImage(
                                      images: images,
                                      id: userProject.projectId);
                                } else {
                                  log('No files selected');
                                }
                              } catch (error) {
                                log('Error picking files: $error');
                              }
                            },
                          ),
                        ),
                        Center(
                          child: CustomElevatedBTN(
                            text: "Upload logo",
                            color: color,
                            onPressed: () async {
                              final ImagePicker picker = ImagePicker();
                              final XFile? imagePath = await picker.pickImage(
                                  source: ImageSource.gallery);
                              if (imagePath != null) {
                                final imageAsByte =
                                    await File(imagePath.path).readAsBytes();
                                projectCubit.uploadLogo(
                                    id: userProject.projectId,
                                    image: imageAsByte);
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

Future<void> _dialogBuilder({
  required BuildContext context,
  required MembersProjectModel member,
}) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("${member.firstName} ${member.lastName} "),
        content: SizedBox(
          height: 100,
          child: Column(
            children: [
              Row(
                children: [
                  const Icon(Icons.email),
                  const SizedBox(
                    width: 10,
                  ),
                  Text("${member.email}")
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  member.link?.github != null
                      ? CustomUrlIcon(
                          img: "assets/icons/github.png",
                          url: "https://www.github.com/${member.link!.github}",
                          width: 30,
                        )
                      : const SizedBox(),
                  member.link?.linkedin != null
                      ? CustomUrlIcon(
                          img: "assets/icons/linkedin.png",
                          url:
                              "https://www.linkedin.com/${member.link!.linkedin}",
                          width: 30,
                        )
                      : const SizedBox(),
                  member.link?.bindlink != null
                      ? CustomUrlIcon(
                          img: "assets/icons/bindlink.png",
                          url: "https://www.bind.link/${member.link!.bindlink}",
                          width: 30,
                        )
                      : const SizedBox(),
                  member.link?.resume != null
                      ? CustomUrlIcon(
                          img: "assets/icons/resume.png",
                          url: "${member.link!.resume}",
                          width: 30,
                        )
                      : const SizedBox()
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}

Future<void> addNewMembers(
  BuildContext context, {
  required Function() onPressed,
  required TextEditingController positionController,
  required TextEditingController memberIdController,
}) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Add new member'),
        content: SizedBox(
          height: 200,
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomTextField(
                  title: "Member ID",
                  color: Colors.red,
                  controller: memberIdController,
                ),
                CustomTextField(
                  title: "Position",
                  color: Colors.red,
                  controller: positionController,
                ),
                CustomElevatedBTN(
                  text: "add",
                  color: Colors.blue,
                  onPressed: onPressed,
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

Future<void> addLinkModel(
  BuildContext context, {
  required Function() onPressed,
  required TextEditingController typeController,
  required TextEditingController urlController,
}) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Add new member'),
        content: SizedBox(
          height: 200,
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomTextField(
                  title: "type",
                  color: Colors.red,
                  controller: typeController,
                ),
                CustomTextField(
                  title: "url",
                  color: Colors.red,
                  controller: urlController,
                  keyboardType: TextInputType.url,
                ),
                CustomElevatedBTN(
                  text: "add",
                  color: Colors.blue,
                  onPressed: onPressed,
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
