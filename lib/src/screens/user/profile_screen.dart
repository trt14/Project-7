import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project_7/src/cubit/prfile_cubit/profile_cubit.dart';
import 'package:project_7/src/helper/colors.dart';
import 'package:project_7/src/helper/functions.dart';
import 'package:project_7/src/helper/screen.dart';
import 'package:project_7/src/screens/auth/login_screen.dart';
import 'package:project_7/src/widgits/custom_circle_profile.dart';
import 'package:project_7/src/widgits/custom_elevated_btn.dart';
import 'package:project_7/src/widgits/custom_loading.dart';
import 'package:project_7/src/widgits/custom_text_field.dart';
import 'package:qr_flutter/qr_flutter.dart';
// TODO: add flutter_svg to pubspec.yaml

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    bool edit = false;
    return BlocProvider(
      create: (context) => ProfileCubit(),
      child: Builder(builder: (context) {
        final profileCubit = context.read<ProfileCubit>();
        Color color = Colors.white;

        profileCubit.nameFristController.text =
            profileCubit.userDataLayer.user?.firstName ?? "";
        profileCubit.nameLastController.text =
            profileCubit.userDataLayer.user?.lastName ?? "";
        profileCubit.githubController.text =
            profileCubit.userDataLayer.user?.link?.github ?? "";
        profileCubit.linkedinController.text =
            profileCubit.userDataLayer.user?.link?.linkedin ?? "";
        profileCubit.resumeController.text =
            profileCubit.userDataLayer.user?.link?.resume ?? "";
        profileCubit.bindlinkController.text =
            profileCubit.userDataLayer.user?.link?.bindlink ?? "";
        return SafeArea(
          child: BlocListener<ProfileCubit, ProfileState>(
            listener: (context, state) {
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
                showAlertSnackBar(
                    color: color,
                    context: context,
                    title: "Update was sucess :)",
                    colorStatus: color.uncompletedColor);
              }
              if (state is LogoutState) {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                  (Route<dynamic> route) => false,
                );
              }
            },
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                backgroundColor: color.secondaryColor,
                automaticallyImplyLeading: false,
                actions: [
                  IconButton(
                    onPressed: () {
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => Center(
                          child: SizedBox(
                            child: Card(
                              child: QrImageView(
                                data: profileCubit.userDataLayer.user!.id!,
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
                  ),
                  IconButton(
                      onPressed: () {
                        Clipboard.setData(ClipboardData(
                                text:
                                    profileCubit.userDataLayer.user?.id ?? ""))
                            .then((value) {
                          if (context.mounted) {
                            showAlertSnackBar(
                                color: color,
                                context: context,
                                title: "The ID has been copied.",
                                colorStatus: color.completedColor);
                          }
                        });
                      },
                      icon: Icon(
                        Icons.copy,
                        color: color.txtwhiteColor,
                      )),
                  IconButton(
                      onPressed: () {
                        edit = !edit;
                        profileCubit.enableEidtPofile(edit: edit);
                      },
                      icon: Icon(
                        Icons.settings,
                        color: color.txtwhiteColor,
                      )),
                  IconButton(
                    onPressed: () {
                      profileCubit.logout();
                    },
                    icon: Icon(
                      Icons.logout_outlined,
                      color: color.txtwhiteColor,
                    ),
                  ),
                ],
                title: Text(
                  "Profile",
                  style: TextStyle(color: color.txtwhiteColor),
                ),
              ),
              body: SingleChildScrollView(
                child: BlocBuilder<ProfileCubit, ProfileState>(
                  builder: (context, state) {
                    return Column(
                      children: [
                        Container(
                          width: context.getWidth(),
                          height: context.getHeight(value: 25 / 100),
                          decoration: BoxDecoration(
                              color: color.secondaryColor,
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                          child: Center(
                            child: Column(
                              children: [
                                BlocBuilder<ProfileCubit, ProfileState>(
                                  builder: (context, state) {
                                    if (state is SuccessState ||
                                        state is FailedState ||
                                        state is ProfileInitial) {
                                      return CustomCircleProfile(
                                          onPressed: () async {
                                            final ImagePicker picker =
                                                ImagePicker();
                                            final XFile? imagePath =
                                                await picker.pickImage(
                                                    source:
                                                        ImageSource.gallery);
                                            if (imagePath != null) {
                                              final imageAsByte =
                                                  await File(imagePath.path)
                                                      .readAsBytes();
                                              await profileCubit.updateUserPic(
                                                  image: imageAsByte);
                                            }
                                          },
                                          color: color,
                                          imgUrl: profileCubit
                                              .userDataLayer.user?.imageUrl);
                                    }
                                    return const SizedBox();
                                  },
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "${profileCubit.userDataLayer.user?.firstName} ${profileCubit.userDataLayer.user?.lastName}",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: color.txtwhiteColor,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "Flutter Developer",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: color.bgColor,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  profileCubit.userDataLayer.user?.role ?? "",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: color.holdingColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              profileCubit.userDataLayer.user?.link?.github !=
                                      null
                                  ? GestureDetector(
                                      onTap: () {
                                        launchStringUrl(
                                            "https://github.com/${profileCubit.userDataLayer.user?.link?.github}");
                                      },
                                      child: Image.asset(
                                        "assets/icons/github.png",
                                        width: 30,
                                      ),
                                    )
                                  : const SizedBox(),
                              profileCubit.userDataLayer.user?.link?.linkedin !=
                                      null
                                  ? GestureDetector(
                                      onTap: () {
                                        launchStringUrl(
                                            "https://www.linkedin.com/in/${profileCubit.userDataLayer.user?.link?.linkedin}");
                                      },
                                      child: Image.asset(
                                        "assets/icons/linkedin.png",
                                        width: 30,
                                      ),
                                    )
                                  : const SizedBox(),
                              profileCubit.userDataLayer.user?.link?.bindlink !=
                                      null
                                  ? GestureDetector(
                                      onTap: () {
                                        launchStringUrl(
                                            "https://bind.link/${profileCubit.userDataLayer.user?.link?.bindlink}");
                                      },
                                      child: Image.asset(
                                        "assets/icons/bindlink.png",
                                        width: 30,
                                      ),
                                    )
                                  : const SizedBox(),
                              profileCubit.userDataLayer.user?.link?.resume !=
                                      null
                                  ? GestureDetector(
                                      onTap: () {
                                        launchStringUrl(
                                            "${profileCubit.userDataLayer.user?.link?.resume}");
                                      },
                                      child: Image.asset(
                                        "assets/icons/resume.png",
                                        width: 30,
                                      ),
                                    )
                                  : const SizedBox(),
                            ],
                          ),
                        ),
                        BlocBuilder<ProfileCubit, ProfileState>(
                          builder: (context, state) {
                            if (state is EditState) {
                              return Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  children: [
                                    CustomTextField(
                                      title: "First Name",
                                      color: color,
                                      controller:
                                          profileCubit.nameFristController,
                                      icon: Icon(
                                        Icons.person,
                                        color: color.primaryColor,
                                      ),
                                    ),
                                    CustomTextField(
                                      title: "Last Name",
                                      color: color,
                                      controller:
                                          profileCubit.nameLastController,
                                      icon: Icon(
                                        Icons.person,
                                        color: color.primaryColor,
                                      ),
                                    ),
                                    CustomTextField(
                                      title: "Github",
                                      color: color,
                                      controller: profileCubit.githubController,
                                      icon: Icon(
                                        Icons.link,
                                        color: color.primaryColor,
                                      ),
                                    ),
                                    CustomTextField(
                                      title: "linkedin",
                                      color: color,
                                      controller:
                                          profileCubit.linkedinController,
                                      icon: Icon(
                                        Icons.link,
                                        color: color.primaryColor,
                                      ),
                                    ),
                                    CustomTextField(
                                      title: "Resume",
                                      color: color,
                                      controller: profileCubit.resumeController,
                                      icon: Icon(
                                        Icons.link,
                                        color: color.primaryColor,
                                      ),
                                    ),
                                    CustomTextField(
                                      title: "Bindlink",
                                      color: color,
                                      controller:
                                          profileCubit.bindlinkController,
                                      icon: Icon(
                                        Icons.link,
                                        color: color.primaryColor,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    CustomElevatedBTN(
                                        onPressed: () async {
                                          try {
                                            await profileCubit.editProfile();
                                          } catch (e) {
                                            showAlertSnackBar(
                                                color: color,
                                                context: context,
                                                title: "update failed",
                                                colorStatus:
                                                    color.uncompletedColor);
                                          }
                                        },
                                        text: "Save",
                                        color: color)
                                  ],
                                ),
                              );
                            }
                            return const SizedBox();
                          },
                        )
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
