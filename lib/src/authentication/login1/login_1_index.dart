import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import './login_1.dart';
import './config/theme.dart';
import './widgets/cool_button.dart';

// https://dribbble.com/shots/14503235--Sign-In-Register/attachments/6188725?mode=media
class Login1Index extends StatelessWidget {
  static const String routeName = 'authentications/login-1-index';

  final String image1 = 'assets/svg/undraw_romantic_getaway_re_3f45.svg';

  const Login1Index({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              image1,
              width: double.infinity,
              height: 200,
            ),
            const Text(
              'Enterprise team collaboration.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(Login1Theme.white),
                fontSize: 35,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Text(
              'Begin together your files, your tools, projects and people. Including  a new mobile and desktop application.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(Login1Theme.grey2),
                fontSize: 17,
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(Login1Theme.grey1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: CoolButton(
                      context: context,
                      bgColor: Login1Theme.white,
                      textColor: Login1Theme.grey1,
                      label: 'Register',
                      onTap: () {
                        Navigator.of(context).pushNamed(Login1.routeName);
                      },
                    ),
                  ),
                  Expanded(
                    child: CoolButton(
                      context: context,
                      bgColor: Login1Theme.grey1,
                      textColor: Login1Theme.white,
                      label: 'Login',
                      onTap: () {
                        Navigator.of(context).pushNamed(Login1.routeName);
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _coolButton(
      BuildContext context, String label, int bgColor, int textColor) {
    return InkWell(
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          color: Color(bgColor),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: Color(textColor),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
