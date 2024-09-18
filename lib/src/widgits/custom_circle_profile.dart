import 'package:flutter/material.dart';
import 'package:project_7/src/helper/colors.dart';

class CustomCircleProfile extends StatelessWidget {
  const CustomCircleProfile(
      {super.key, this.imgUrl, required this.color, this.onPressed});
  final String? imgUrl;
  final Color color;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    Color color = Colors.white;
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            // child: Icon(Icons.person),
            backgroundImage:
                NetworkImage(imgUrl ?? "https://placehold.co/100x100"),
          ),
          Positioned(
            right: -20,
            bottom: 0,
            child: SizedBox(
              height: 50,
              width: 50,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: const BorderSide(color: Colors.white),
                  ),
                  backgroundColor: color.bgColor,
                ),
                onPressed: onPressed,
                child: Icon(
                  Icons.add_a_photo,
                  color: color.txtBlack45Color,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
