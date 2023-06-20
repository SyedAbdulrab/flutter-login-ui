import 'package:flutter/material.dart';
import 'package:login_ui/pallete.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        gradient:const  LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
          Pallete.gradient1,Pallete.gradient2,Pallete.gradient3
        ])
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          fixedSize: const Size(285, 55)
        ),
          onPressed: onPressed,
          child:const Text(
            'Sign In',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 17),
          )),
    );
  }
}
