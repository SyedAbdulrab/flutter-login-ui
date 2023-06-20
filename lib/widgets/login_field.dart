import 'package:flutter/material.dart';
import 'package:login_ui/pallete.dart';

class LoginField extends StatelessWidget{
  const LoginField({super.key, required this.hintText});
final String hintText;

//if you wanna add any controllers etc you'll have to add it by taking parameters through the constructor
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints:const BoxConstraints(
        maxWidth: 285
      ),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding:const EdgeInsets.all(20),
          hintText: hintText,
          focusedBorder: OutlineInputBorder(
            borderSide:const  BorderSide(
                color: Pallete.gradient2,
                width: 3
            ),
            borderRadius: BorderRadius.circular(10),
          ),
            enabledBorder: OutlineInputBorder(
        borderSide:const  BorderSide(
        color: Pallete.borderColor,
            width: 3
        ),
        borderRadius: BorderRadius.circular(10),
      ),
        ),
      ),
    );
  }

}