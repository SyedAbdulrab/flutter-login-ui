import 'package:flutter/material.dart';
import 'package:login_ui/widgets/gradient_button.dart';
import 'package:login_ui/widgets/login_field.dart';
import 'package:login_ui/widgets/social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children:[
            Positioned(
              top: 300,
              left: 200,
              child: Transform.rotate(
                angle: 3, // Specify the rotation angle in radians
                child: Image.asset(
                  'assets/images/signin_balls.png',

                ),
              ),
            ),
            Center(
              child: Column(children: [
                Image.asset('assets/images/signin_balls.png'),
                const Text(
                  'Sign In',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                ),
                const SizedBox(
                  height: 50,
                ),
                const SocialButton(
                    iconPath: 'assets/svgs/g_logo.svg',
                    label: 'Continue with google',
                    horizontalWidth: 47),
                const SizedBox(
                  height: 20,
                ),
                const SocialButton(
                  iconPath: 'assets/svgs/f_logo.svg',
                  label: 'Continue with Facebook',
                  horizontalWidth: 35,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'or',
                  style: TextStyle(fontSize: 17),
                ),
                const SizedBox(
                  height: 15,
                ),
                const LoginField(hintText: 'Email'),
                const SizedBox(
                  height: 15,
                ),
                const LoginField(hintText: 'Password'),
                const SizedBox(
                  height: 20,
                ),
                GradientButton(onPressed: (){})
              ]),
            )
          ] ,
        ),
      ),
    );
  }
}
