import 'package:flutter/material.dart';

import '../src/profile/profile_1.dart';
import '../src/profile/profile_2.dart';
import '../src/profile/profile_3.dart';
import '../src/profile/profile_4.dart';
import '../src/profile/profile_5.dart';

class Navigation extends StatelessWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter UI Challanges Accepted'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Profile UI
            ExpansionTile(
              title: const Text('Profile'),
              children: <Widget>[
                ListTile(
                  title: const Text('Profile 1'),
                  onTap: () {
                    Navigator.pushNamed(context, Profile1.routeName);
                  },
                ),
                ListTile(
                  title: const Text('Profile 2'),
                  onTap: () {
                    Navigator.pushNamed(context, Profile2.routeName);
                  },
                ),
                ListTile(
                  title: const Text('Profile 3'),
                  onTap: () {
                    Navigator.pushNamed(context, Profile3.routeName);
                  },
                ),
                ListTile(
                  title: const Text('Profile 4'),
                  onTap: () {
                    Navigator.pushNamed(context, Profile4.routeName);
                  },
                ),
                ListTile(
                  title: const Text('Profile 5'),
                  onTap: () {
                    Navigator.pushNamed(context, Profile5.routeName);
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
