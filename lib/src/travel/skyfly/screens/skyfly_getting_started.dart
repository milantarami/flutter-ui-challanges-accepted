import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges_accepted/src/travel/skyfly/screens/skyfly_home.dart';

class SkyflyGettingStarted extends StatelessWidget {
  static const String routeName = 'travel/skyfly/getting-started';

  const SkyflyGettingStarted({Key? key}) : super(key: key);

  final String bgImage =
      'assets/images/thomas-richter-8R7BE-piQqo-unsplash.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 60.0,
        ),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(bgImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Travel with \n comfort and  \nsafety',
              style: TextStyle(
                fontSize: 35.0,
                fontFamily: "Phonk Contrast DEMO",
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 30.0),
            _buildSignupButton(context)
          ],
        ),
      ),
    );
  }

  Widget _buildSignupButton(BuildContext context) {
    return InkWell(
      child: Container(
        height: 60,
        width: 150,
        decoration: BoxDecoration(
          color: const Color(0xFFEC6D67),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: const Center(
          child: Text(
            'Signup',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      onTap: () {
        Navigator.of(context).pushNamed(SkyFlyHome.routeName);
      },
    );
  }
}
