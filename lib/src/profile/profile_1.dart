import 'package:flutter/material.dart';

class Profile1 extends StatelessWidget {
  static const String routeName = '/profiles/profile1';

  const Profile1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE0E0E0),
      appBar: AppBar(
        title: const Text('Profile 1'),
        backgroundColor: const Color(0xFFF44336),
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          // TODO: Add profile
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFF44336),
                  Color(0xFFFF8A65),
                ],
              ),
            ),
            child: Column(
              children: [
                // TODO: Add a profile image
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 50,
                        child: const CircleAvatar(
                          backgroundColor: Color(0xFFE53935),
                          child: Icon(Icons.phone),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        height: 150,
                        child: const CircleAvatar(
                          radius: 70,
                          backgroundColor: Color(0xFFFF8A65),
                          child: CircleAvatar(
                            backgroundColor: Color(0xFFD32F2F),
                            radius: 50,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 50,
                        child: const CircleAvatar(
                          backgroundColor: Color(0xFFE53935),
                          child: Icon(Icons.message),
                        ),
                      ),
                    ),
                  ],
                ),
                // TODO: Add a name
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: const <Widget>[
                      Text(
                        'Milan Tarami',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Rupandehi, Nepal',
                        style: TextStyle(
                          color: Color(0xFFD42F2F),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // TODO: Add followers and following
          Container(
            height: 80,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFF44336),
                  Color(0xFFFF8A65),
                ],
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: DecoratedBox(
                    decoration: const BoxDecoration(
                      color: Color(0xFFFF8A65),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const <Widget>[
                        Text(
                          '29',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'FOLLOWERS',
                          style: TextStyle(
                            color: Color(0xFFF44336),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: DecoratedBox(
                    decoration: const BoxDecoration(
                      color: Color(0xFFF44336),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const <Widget>[
                        Text(
                          '234',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'FOLLOWING',
                          style: TextStyle(
                            color: Color(0xFFFCC6C3),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // TODO: Other Details
          Container(
            child: Column(
              children: const <Widget>[
                ListTile(
                  title:
                      Text('Email', style: TextStyle(color: Color(0xFFF44336))),
                  subtitle: Text('mailtomilantarami@gmail.com'),
                ),
                ListTile(
                  title:
                      Text('Phone', style: TextStyle(color: Color(0xFFF44336))),
                  subtitle: Text('+977-98XXXXXXXX'),
                ),
                ListTile(
                  title: Text('Twitter',
                      style: TextStyle(color: Color(0xFFF44336))),
                  subtitle: Text('@_milantarami'),
                ),
                ListTile(
                  title: Text('Facebook',
                      style: TextStyle(color: Color(0xFFF44336))),
                  subtitle: Text('facebook.com/milantarami.dev'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
