import 'package:flutter/material.dart';

class Project {
  final String name;
  final String imageUrl;
  Project({required this.name, required this.imageUrl});
}

class Profile6 extends StatelessWidget {
  static const String routeName = 'profiles/profile6';

  Profile6({Key? key}) : super(key: key);

  final String profileImage =
      'assets/images/hamed-foroutan-8WsfFDuK1l0-unsplash.jpg';

  final int _color1 = 0xFF00E0FF;
  final int _color2 = 0xFF74F9FF;
  final int _color3 = 0xFFA6FFF2;
  final int _color4 = 0xFFE8FFE8;

  final List<Project> _projects = [
    Project(name: 'Project 1', imageUrl: "url"),
    Project(name: 'Project 2', imageUrl: "url"),
    Project(name: 'Project 3', imageUrl: "url"),
    Project(name: 'Project 4', imageUrl: "url"),
    Project(name: 'Project 5', imageUrl: "url"),
    Project(name: 'Project 6', imageUrl: "url"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAF6),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Color(_color1),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 80,
                backgroundColor: Colors.pink,
                child: ClipOval(
                  child: Image.asset(
                    profileImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Milan Tarami',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Josefin Sans',
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Devdaha, Rupandehi, Nepal',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const Divider(),
              const Text(
                'I love programming since high school. Self taught programmer who have completed lots of projects. VS Code, Chrome and Devtools are favourite tools and beloved friends. Open Source is pleasent. I love making videos, photo manipulation. I am able to think, design, code, deploy, and sleep. Love to learn something new !',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 17,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 180.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    for (var project in _projects) _buildProjectCard(project)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container _buildProjectCard(Project project) {
    return Container(
      margin: const EdgeInsets.only(right: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: [
              Color(_color1),
              Color(_color2),
            ],
          )),
      width: 160.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(project.name),
        ],
      ),
    );
  }
}
