import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges_accepted/src/authentication/login1/login_1_index.dart';

import '../src/profile/profile_1.dart';
import '../src/profile/profile_2.dart';
import '../src/profile/profile_3.dart';
import '../src/profile/profile_4.dart';
import '../src/profile/profile_5.dart';
import '../src/profile/profile_6.dart';
import '../src/authentication/login1/login_1_index.dart';
import '../src/authentication/login2/login_2_index.dart';

class Menu {
  String label;
  String? routeName;
  List<Menu> children;
  Menu({required this.label, this.routeName, this.children = const <Menu>[]});
}

class Navigation extends StatelessWidget {
  Navigation({Key? key}) : super(key: key);

  final List<Menu> _menus = [
    Menu(
      label: 'Profile',
      children: [
        Menu(label: 'Profile 1', routeName: Profile1.routeName),
        Menu(label: 'Profile 2', routeName: Profile2.routeName),
        Menu(label: 'Profile 3', routeName: Profile3.routeName),
        Menu(label: 'Profile 4', routeName: Profile4.routeName),
        Menu(label: 'Profile 5', routeName: Profile5.routeName),
        Menu(label: 'Profile 6', routeName: Profile6.routeName),
      ],
    ),
    Menu(
      label: 'Authentication',
      children: [
        Menu(label: 'Login 1', routeName: Login1Index.routeName),
        Menu(label: 'Login 2', routeName: Login2Index.routeName),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter UI Challanges Accepted'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            for (var item in _menus) _buildMenu(context, item)
          ],
        ),
      ),
    );
  }

  Widget _buildMenu(BuildContext context, Menu menu) {
    return ExpansionTile(
      title: Text(menu.label + ' ( ' + menu.children.length.toString() + ' ) '),
      children: <Widget>[
        for (var subMenu in menu.children) _buildSubMenu(context, subMenu)
      ],
    );
  }

  Widget _buildSubMenu(BuildContext context, Menu menu) {
    return ListTile(
      title: Text(menu.label),
      onTap: () {
        Navigator.pushNamed(context, menu.routeName.toString());
      },
    );
  }
}
