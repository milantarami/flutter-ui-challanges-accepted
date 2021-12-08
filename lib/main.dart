import 'package:flutter/material.dart';

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
        Login1Index.routeName: (context) => Login1Index(),
        Login1.routeName: (context) => Login1(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
