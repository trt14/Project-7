import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:project_7/src/cubit/prfile_cubit/profile_cubit.dart';
import 'package:project_7/src/data_layer/data_layer.dart';
import 'package:project_7/src/helper/colors.dart';
import 'package:project_7/src/helper/functions.dart';
import 'package:project_7/src/helper/screen.dart';
import 'package:project_7/src/models/user/user_model.dart';
import 'package:project_7/src/widgits/custom_alert.dart';
import 'package:project_7/src/widgits/custom_card_project.dart';
import 'package:project_7/src/widgits/custom_circle_profile.dart';
import 'package:project_7/src/widgits/custom_elevated_btn.dart';
import 'package:project_7/src/widgits/custom_loading.dart';
import 'package:project_7/src/widgits/custom_text_field.dart';
import 'package:url_launcher/url_launcher.dart';
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
            profileCubit.get.user?.firstName ?? "";
        profileCubit.nameLastController.text =
            profileCubit.get.user?.lastName ?? "";
        profileCubit.githubController.text =
            profileCubit.get.user?.link?.github ?? "";
        profileCubit.linkedinController.text =
            profileCubit.get.user?.link?.linkedin ?? "";
        profileCubit.resumeController.text =
            profileCubit.get.user?.link?.resume ?? "";
        profileCubit.bindlinkController.text =
            profileCubit.get.user?.link?.bindlink ?? "";
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
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(state.error.toString())));
              }
              if (state is SuccessState) {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Update was sucess")));
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
                        Clipboard.setData(ClipboardData(
                                text: profileCubit.get.user?.id ?? ""))
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
                        //customAlert(context);
                        // CustomLoading();
                        edit = !edit;
                        profileCubit.enableEidtPofile(edit: edit);
                      },
                      icon: Icon(
                        Icons.settings,
                        color: color.txtwhiteColor,
                      )),
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
                                ProfilePic(
                                  img_url:
                                      profileCubit.get.user?.imageUrl ?? "sae",
                                  color: color,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "${profileCubit.get.user?.firstName} ${profileCubit.get.user?.lastName}",
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
                                  profileCubit.get.user?.role ?? "",
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
                              profileCubit.get.user?.link?.github != null
                                  ? GestureDetector(
                                      onTap: () {
                                        launchStringUrl(
                                            "https://github.com/${profileCubit.get.user?.link?.github}");
                                      },
                                      child: Image.asset(
                                        "assets/icons/github.png",
                                        width: 30,
                                      ),
                                    )
                                  : const SizedBox(),
                              profileCubit.get.user?.link?.linkedin != null
                                  ? GestureDetector(
                                      onTap: () {
                                        launchStringUrl(
                                            "https://www.linkedin.com/in/${profileCubit.get.user?.link?.linkedin}");
                                      },
                                      child: Image.asset(
                                        "assets/icons/linkedin.png",
                                        width: 30,
                                      ),
                                    )
                                  : const SizedBox(),
                              profileCubit.get.user?.link?.bindlink != null
                                  ? GestureDetector(
                                      onTap: () {
                                        launchStringUrl(
                                            "https://bind.link/${profileCubit.get.user?.link?.bindlink}");
                                      },
                                      child: Image.asset(
                                        "assets/icons/bindlink.png",
                                        width: 30,
                                      ),
                                    )
                                  : const SizedBox(),
                              profileCubit.get.user?.link?.resume != null
                                  ? GestureDetector(
                                      onTap: () {
                                        launchStringUrl(
                                            "${profileCubit.get.user?.link?.resume}");
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
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(const SnackBar(
                                                    content:
                                                        Text("update failed")));
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
