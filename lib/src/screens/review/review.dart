import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:project_7/src/widgits/custom_text_field.dart';

class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    int idea = 0;
    int design = 0;
    int tools = 0;
    int practices = 0;
    int presentation = 0;
    int investment = 0;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Idea"),
                RatingBar(
                  filledIcon: Icons.star,
                  emptyIcon: Icons.star_border,
                  onRatingChanged: (value) => idea = value.toInt(),
                  initialRating: 0,
                  maxRating: 10,
                ),
                const Text("Design"),
                RatingBar(
                  filledIcon: Icons.star,
                  emptyIcon: Icons.star_border,
                  onRatingChanged: (value) => design = value.toInt(),
                  initialRating: 0,
                  maxRating: 10,
                ),
                const Text("Tools"),
                RatingBar(
                  filledIcon: Icons.star,
                  emptyIcon: Icons.star_border,
                  onRatingChanged: (value) => tools.toInt,
                  initialRating: 0,
                  maxRating: 10,
                ),
                const Text("Practices"),
                RatingBar(
                  filledIcon: Icons.star,
                  emptyIcon: Icons.star_border,
                  onRatingChanged: (value) => practices = value.toInt(),
                  initialRating: 0,
                  maxRating: 10,
                ),
                const Text("Presentation"),
                RatingBar(
                  filledIcon: Icons.star,
                  emptyIcon: Icons.star_border,
                  onRatingChanged: (value) => presentation = presentation.toInt(),
                  initialRating: 0,
                  maxRating: 10,
                ),
                const Text("Investment"),
                RatingBar(
                  filledIcon: Icons.star,
                  emptyIcon: Icons.star_border,
                onRatingChanged: (value) =>investment = value.toInt(),
                  initialRating: 0,
                  maxRating: 10,
                ),
                CustomTextField(
                  title: "addtional notes",
                  maxLines: 5,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
