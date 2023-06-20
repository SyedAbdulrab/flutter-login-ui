import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui/pallete.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({super.key, required this.iconPath, required this.label, required this.horizontalWidth});

  final String iconPath;
  final String label;
  final double horizontalWidth;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: TextButton.styleFrom(
        padding:EdgeInsets.symmetric(horizontal: horizontalWidth,vertical: 20),
        shape: RoundedRectangleBorder(
          side:const  BorderSide(
            color: Pallete.borderColor,
            width: 3
          ),
          borderRadius: BorderRadius.circular(10)

        )
      ),
        onPressed: () {},
        icon: SvgPicture.asset(
          iconPath,
          width: 25,
          color: Pallete.whiteColor,
        ),
        label: Text(
          label,
          style: const TextStyle(color: Pallete.whiteColor, fontSize: 17),
        ));
  }
}
