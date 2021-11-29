import 'package:flutter/material.dart';

class Profile4 extends StatelessWidget {
  static const String routeName = 'profiles/profile4';

  const Profile4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE0E0E0),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.message,
              color: Color(0xFF676767),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Color(0xFF676767),
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildProfile(context),
            _buildProfileDescription(context),
            const SizedBox(height: 30.0),
            _buildSectionTitle(context, 'Skills'),
            _buildSkillRow('Laravel', 0.9),
            _buildSkillRow('React JS', 0.8),
            _buildSkillRow('Tailwind', 0.8),
            _buildSkillRow('Livewire', 0.6),
            const SizedBox(height: 30.0),
            _buildSectionTitle(context, 'Experience'),
            _buildExperienceRow(
                'Former Laravel Developer', 'Nov 2018 - Dec 202'),
            const SizedBox(height: 30.0),
            _buildSectionTitle(context, 'Education'),
            _buildEducationRow('BE Compuer', '2014 - 2018'),
            const SizedBox(height: 30.0),
            _buildSectionTitle(context, 'Contact'),
            const ListTile(
              leading: Icon(Icons.phone),
              title: Text('+977-98XXXXXXXX'),
            )
          ],
        ),
      ),
    );
  }

  Row _buildProfile(BuildContext context) {
    return Row(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.red,
            radius: 45,
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 40,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Milan Tarami',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            const Text(
              'Laravel Developer',
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(height: 5),
            Row(
              children: const <Widget>[
                Icon(Icons.map),
                SizedBox(width: 5),
                Text('Rupandehi, Nepal')
              ],
            )
          ],
        )
      ],
    );
  }

  Container _buildProfileDescription(context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: const Text(
          'VS Code, Chrome and Devtools are favourite tools and beloved friends. Open Source is pleasent. I love making videos, photo manipulation. I am able to think, design, code, deploy, and sleep. Love to learn something new !'),
    );
  }

  Column _buildSectionTitle(BuildContext context, String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title.toUpperCase(),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const Divider(),
      ],
    );
  }

  Row _buildSkillRow(String title, double percent) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Text(title, textAlign: TextAlign.right),
        ),
        const SizedBox(width: 10),
        Expanded(
          flex: 5,
          child: LinearProgressIndicator(
            value: percent,
          ),
        )
      ],
    );
  }

  ListTile _buildExperienceRow(String title, String desc) {
    return ListTile(
      leading: Icon(Icons.fiber_manual_record),
      title: Text(title),
      subtitle: Text(desc),
    );
  }

  ListTile _buildEducationRow(String title, String desc) {
    return ListTile(
      leading: Icon(Icons.fiber_manual_record),
      title: Text(title),
      subtitle: Text(desc),
    );
  }
}
