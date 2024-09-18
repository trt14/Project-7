import 'package:flutter/material.dart';
import 'package:project_7/src/helper/colors.dart';

class ProfilePic extends StatelessWidget {
  ProfilePic({Key? key, required this.img_url, required this.color})
      : super(key: key);
  final String img_url;
  final Color color;

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
                NetworkImage(img_url ?? "https://placehold.co/100x100"),
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
                onPressed: () {},
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
