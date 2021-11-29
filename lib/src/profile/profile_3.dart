import 'package:flutter/material.dart';

class Profile3 extends StatelessWidget {
  static const String routeName = 'profiles/profile3';

  const Profile3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: const Color(0xFFE0E0E0),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(2),
              ),
              child: Column(
                children: [
                  Text(
                    'Milan Tarami'.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Full Stack Developer'.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Row(
                    children: const <Widget>[
                      Expanded(
                        child: ListTile(
                          title: Text(
                            '2.8K',
                            textAlign: TextAlign.center,
                          ),
                          subtitle: Text(
                            'Likes',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          title: Text(
                            '3.6K',
                            textAlign: TextAlign.center,
                          ),
                          subtitle: Text(
                            'Comments',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          title: Text(
                            '8K',
                            textAlign: TextAlign.center,
                          ),
                          subtitle: Text(
                            'Favourites',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'User Information'.toUpperCase(),
                    ),
                  ),
                  const Divider(),
                  const ListTile(
                    leading: Icon(Icons.mail),
                    title: Text('Email'),
                    subtitle: Text('mailtomilantarami@gmail.com'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.phone),
                    title: Text('Phone'),
                    subtitle: Text('+977-98XXXXXXXX'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.web),
                    title: Text('Website'),
                    subtitle: Text('www.milantarami.com.np'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Amount'),
                    subtitle: Text(
                        'Filler text is text that shares some characteristics of a real written text, but is random or otherwise generated. It may be used to display a sample of fonts, generate text for testing, or to spoof an e-mail spam filter.'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.calendar_today),
                    title: Text('Joined at'),
                    subtitle: Text('Jan 22, 2018'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container _build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Card(
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      const Text(
                        'Little Butterfly',
                        style: TextStyle(fontSize: 18),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Product Designer',
                        style: TextStyle(fontSize: 18),
                      ),
                      const Text(
                        'Devdaha, Rupandehi, Nepal',
                        style: TextStyle(fontSize: 14),
                      ),
                      Row(
                        children: const <Widget>[
                          Expanded(
                            child: ListTile(
                              title: Text('285'),
                              subtitle: Text('Likes'),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              title: Text('285'),
                              subtitle: Text('Comments'),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              title: Text('285'),
                              subtitle: Text('Favouries'),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Column(
                  children: const <Widget>[
                    ListTile(
                      title: Text("User information"),
                    ),
                    Divider(),
                    ListTile(
                      title: Text("Email"),
                      subtitle: Text("butterfly.little@gmail.com"),
                      leading: Icon(Icons.email),
                    ),
                    ListTile(
                      title: Text("Phone"),
                      subtitle: Text("+977-9815225566"),
                      leading: Icon(Icons.phone),
                    ),
                    ListTile(
                      title: Text("Website"),
                      subtitle: Text("https://www.littlebutterfly.com"),
                      leading: Icon(Icons.web),
                    ),
                    ListTile(
                      title: Text("About"),
                      subtitle: Text(
                          "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nulla, illo repellendus quas beatae reprehenderit nemo, debitis explicabo officiis sit aut obcaecati iusto porro? Exercitationem illum consequuntur magnam eveniet delectus ab."),
                      leading: Icon(Icons.person),
                    ),
                    ListTile(
                      title: Text("Joined Date"),
                      subtitle: Text("15 February 2019"),
                      leading: Icon(Icons.calendar_view_day),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
