import 'package:flutter/material.dart';

import './config/theme.dart';
import './widgets/text_field.dart';
import './widgets/cool_button.dart';

class Login1 extends StatelessWidget {
  static const String routeName = 'authentications/login-1';

  const Login1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(Login1Theme.black),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.undo),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Let\'s sign you in.',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color(Login1Theme.white),
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Text(
              'Welcome back.',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color(Login1Theme.white),
                fontSize: 28,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Text(
              'You\'ve been missed!',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color(Login1Theme.white),
                fontSize: 28,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 20),
            const FormsInput(
              placeholder: 'Phone, Email or Username',
            ),
            const SizedBox(height: 20),
            FormsInput(
              placeholder: 'Password',
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.remove_red_eye,
                  color: Color(Login1Theme.grey2),
                ),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                  'Don\'t have an account ? ',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'Register',
                  style: TextStyle(color: Color(Login1Theme.grey2)),
                ),
              ],
            ),
            const SizedBox(height: 20),
            CoolButton(
              context: context,
              bgColor: Login1Theme.white,
              textColor: Login1Theme.black,
              label: 'Sign in',
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
