import 'package:flutter/material.dart';

import './config/theme.dart';
import './widgets/text_field.dart';
import './widgets/cool_button.dart';

import 'package:flutter_svg/flutter_svg.dart';

class Login2 extends StatelessWidget {
  static const String routeName = 'authentications/login-2';

  const Login2({Key? key}) : super(key: key);

  final String facebookLogo = 'assets/svg/icons8-facebook.svg';
  final String googleLogo = 'assets/svg/icons8-google.svg';
  final String appleLogo = 'assets/svg/icons8-apple-logo.svg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(Login2Theme.theme1),
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
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Hello Again !',
              style: TextStyle(
                color: Color(Login2Theme.theme3),
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Text(
              'Welcome back you have \n been missed.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(Login2Theme.theme2),
                fontSize: 20,
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
                  Icons.visibility_off,
                  color: Color(Login2Theme.theme6),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const <Widget>[
                Text(
                  'Recovery Password',
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Color(Login2Theme.grey2)),
                )
              ],
            ),
            const SizedBox(height: 16),
            CoolButton(
              context: context,
              bgColor: Login2Theme.theme7,
              textColor: Login2Theme.white,
              label: 'Sign in',
              onTap: () {},
            ),
            const SizedBox(height: 20),
            const Text(
              'Or Continue with',
              style: TextStyle(
                color: Color(Login2Theme.theme3),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Spacer(),
                _buildSocialLoginButton(context, facebookLogo),
                _buildSocialLoginButton(context, appleLogo),
                _buildSocialLoginButton(context, googleLogo),
                const Spacer(),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text('Not a member ?'),
                Text(
                  ' Register Now',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildSocialLoginButton(BuildContext context, String svgImagePath) {
    return InkWell(
      child: Container(
        height: 60,
        width: 60,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: SvgPicture.asset(svgImagePath),
      ),
    );
  }
}
