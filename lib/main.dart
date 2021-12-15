import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges_accepted/src/travel/skyfly/screens/skyfly_book.dart';
import 'package:flutter_ui_challenges_accepted/src/travel/skyfly/screens/skyfly_getting_started.dart';
import 'package:flutter_ui_challenges_accepted/src/travel/skyfly/screens/skyfly_home.dart';

import './home.dart';

// profiles
import './src/profile/profile_1.dart';
import './src/profile/profile_2.dart';
import './src/profile/profile_3.dart';
import './src/profile/profile_4.dart';
import './src/profile/profile_5.dart';
import './src/profile/profile_6.dart';

//login
import './src/authentication/login1/login_1.dart';
import './src/authentication/login1/login_1_index.dart';
import './src/authentication/login2/login_2.dart';
import './src/authentication/login2/login_2_index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Challanges Accepted',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
      routes: {
        Profile1.routeName: (context) => const Profile1(),
        Profile2.routeName: (context) => Profile2(),
        Profile3.routeName: (context) => const Profile3(),
        Profile4.routeName: (context) => const Profile4(),
        Profile5.routeName: (context) => Profile5(),
        Profile6.routeName: (context) => Profile6(),
        //login
        Login1Index.routeName: (context) => const Login1Index(),
        Login1.routeName: (context) => const Login1(),
        Login2Index.routeName: (context) => const Login2Index(),
        Login2.routeName: (context) => const Login2(),

        SkyflyGettingStarted.routeName: (context) =>
            const SkyflyGettingStarted(),
        SkyFlyHome.routeName: (context) => SkyFlyHome(),
        SkyflyBook.routeName: (context) => const SkyflyBook()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
