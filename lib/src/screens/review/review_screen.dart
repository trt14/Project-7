import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_7/src/cubit/review_cubit/review_cubit.dart';
import 'package:project_7/src/helper/functions.dart';
import 'package:project_7/src/widgits/custom_elevated_btn.dart';
import 'package:project_7/src/widgits/custom_loading.dart';
import 'package:project_7/src/widgits/custom_text_field.dart';
import 'package:project_7/src/helper/colors.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key, required this.projectId});
  final String projectId;
  @override
  Widget build(BuildContext context) {
    Color color = Colors.black;

    return BlocProvider(
      create: (context) => ReviewCubit(),
      child: Builder(builder: (context) {
        final reviewCubit = context.read<ReviewCubit>();
        return Scaffold(
          body: BlocListener<ReviewCubit, ReviewState>(
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
                showAlertSnackBar(
                    color: color,
                    context: context,
                    title: "Thank you for review :)",
                    colorStatus: color.completedColor);
                Navigator.pop(context);

                Navigator.pop(context);
              }
            },
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/feedback.png"),
                      const Text("Idea:"),
                      RatingBar(
                        alignment: Alignment.center,
                        filledIcon: Icons.star,
                        emptyIcon: Icons.star_border,
                        onRatingChanged: (value) =>
                            reviewCubit.idea = value.toInt(),
                        initialRating: 0,
                        maxRating: 5,
                      ),
                      const Text("Design:"),
                      RatingBar(
                        alignment: Alignment.center,
                        filledIcon: Icons.star,
                        emptyIcon: Icons.star_border,
                        onRatingChanged: (value) =>
                            reviewCubit.design = value.toInt(),
                        initialRating: 0,
                        maxRating: 5,
                      ),
                      const Text("Tools:"),
                      RatingBar(
                        alignment: Alignment.center,
                        filledIcon: Icons.star,
                        emptyIcon: Icons.star_border,
                        onRatingChanged: (value) => reviewCubit.tools.toInt,
                        initialRating: 0,
                        maxRating: 5,
                      ),
                      const Text("Practices:"),
                      RatingBar(
                        alignment: Alignment.center,
                        filledIcon: Icons.star,
                        emptyIcon: Icons.star_border,
                        onRatingChanged: (value) =>
                            reviewCubit.practices = value.toInt(),
                        initialRating: 0,
                        maxRating: 5,
                      ),
                      const Text("Presentation:"),
                      RatingBar(
                        alignment: Alignment.center,
                        filledIcon: Icons.star,
                        emptyIcon: Icons.star_border,
                        onRatingChanged: (value) =>
                            reviewCubit.presentation = value.toInt(),
                        initialRating: 0,
                        maxRating: 5,
                      ),
                      const Text("Investment:"),
                      RatingBar(
                        alignment: Alignment.center,
                        filledIcon: Icons.star,
                        emptyIcon: Icons.star_border,
                        onRatingChanged: (value) =>
                            reviewCubit.investment = value.toInt(),
                        initialRating: 0,
                        maxRating: 5,
                      ),
                      CustomTextField(
                        controller: reviewCubit.notesController,
                        title: "addtional notes:",
                        maxLines: 5,
                        color: Colors.white,
                      ),
                      Center(
                        child: CustomElevatedBTN(
                          text: "Submit review",
                          color: Colors.white,
                          onPressed: () async {
                            try {
                              reviewCubit.submitRewview(id: projectId);
                            } catch (e) {
                              log(e.toString());
                            }
                          },
                        ),
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
