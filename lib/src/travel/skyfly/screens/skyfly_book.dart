import 'package:flutter/material.dart';

class SkyflyBook extends StatelessWidget {
  static const String routeName = 'travel/skyfly/book-ticket';

  const SkyflyBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _buildBackgroundImage(context),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                margin: const EdgeInsets.all(14.0),
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: const Icon(
                  Icons.chevron_left,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          body: SizedBox(
            child: Column(
              children: [
                const Spacer(),
                Container(
                  height: MediaQuery.of(context).size.height * 0.80,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFBFAFA),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      _buildTravelModeSelector(context),
                      const Text(
                        '2 tickets',
                        style: TextStyle(
                          fontSize: 26.0,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Phonk Contrast DEMO",
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      _buildTravelRoute(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _buildBackgroundImage(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/anthony-delanoix-Q0-fOL2nqZc-unsplash.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildTravelModeSelector(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F4),
        borderRadius: BorderRadius.circular(50),
      ),
      height: 50.0,
      margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
      child: Row(
        children: [
          _buildTravelModeSelectorButton(text: 'Avia', isActive: true),
          _buildTravelModeSelectorButton(text: 'Train'),
          _buildTravelModeSelectorButton(text: 'Car'),
        ],
      ),
    );
  }

  Widget _buildTravelModeSelectorButton(
      {required String text, bool isActive = false}) {
    return Expanded(
      child: InkWell(
        child: Container(
          decoration: BoxDecoration(
            color: isActive ? const Color(0xFFED6D66) : Colors.transparent,
            borderRadius: BorderRadius.circular(50),
          ),
          height: 50.0,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontWeight: isActive ? FontWeight.w800 : FontWeight.w500,
                color: isActive ? Colors.white : const Color(0xFF4E4551),
                fontSize: 16.0,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTravelRoute() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        children: [
          Row(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const <Widget>[
              Text('New Work'),
              Text('Great Britain'),
            ],
          )
        ],
      ),
    );
  }
}
