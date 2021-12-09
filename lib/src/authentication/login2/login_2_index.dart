import 'package:flutter/material.dart';

import 'login_2.dart';
import './config/theme.dart';
import './widgets/cool_button.dart';

// https://dribbble.com/shots/14503235--Sign-In-Register/attachments/6188725?mode=media
class Login2Index extends StatelessWidget {
  static const String routeName = 'authentications/login-2-index';

  final String image1 = 'assets/images/photo-1624628639856-100bf817fd35.jpg';

  const Login2Index({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(Login2Theme.theme1),
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   leading: IconButton(
      //     icon: const Icon(Icons.undo),
      //     onPressed: () {
      //       Navigator.of(context).pop();
      //     },
      //     color: const Color(Login2Theme.theme2),
      //   ),
      // ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(
            top: 10.0,
            left: 10.0,
            right: 10.0,
            bottom: 20.0,
          ),
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red,
                  image: DecorationImage(
                    image: AssetImage(image1),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Spacer(),
              const Text(
                'Discover your. \n Dream job Here.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(Login2Theme.theme3),
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(40.0),
                child: Text(
                  'Explore  all the most exiting jobs roles based on your interest And study major.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 1.3,
                    color: Color(Login2Theme.grey2),
                    fontSize: 17,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 30, left: 30),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(Login2Theme.theme1),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: const Color(
                      Login2Theme.white,
                    ),
                    width: 2,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: CoolButton(
                        context: context,
                        bgColor: Login2Theme.white,
                        textColor: Login2Theme.grey1,
                        label: 'Register',
                        onTap: () {
                          Navigator.of(context).pushNamed(Login2.routeName);
                        },
                      ),
                    ),
                    Expanded(
                      child: CoolButton(
                        context: context,
                        bgColor: Login2Theme.theme1,
                        textColor: Login2Theme.theme2,
                        label: 'Login',
                        onTap: () {
                          Navigator.of(context).pushNamed(Login2.routeName);
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
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
