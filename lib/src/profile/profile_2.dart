import 'package:flutter/material.dart';

class Profile2 extends StatelessWidget {
  static const String routeName = '/profile2';

  Profile2({Key? key}) : super(key: key);

  final List<Map> collections = [
    {
      'name': 'Foodie',
      'image': 'assets/images/eiliv-sonas-aceron-ZuIDLSz3XLg-unsplash.jpg'
    },
    {
      'name': 'Clothing',
      'image': 'assets/images/caio-coelho-QRN47la37gw-unsplash.jpg'
    },
    {
      'name': 'Adventure',
      'image': 'assets/images/ian-dooley-hpTH5b6mo2s-unsplash.jpg'
    },
    {
      'name': 'Travel',
      'image': 'assets/images/tom-barrett-M0AWNxnLaMw-unsplash.jpg'
    },
    {
      'name': 'Gaming',
      'image': 'assets/images/uriel-soberanes-MxVkWPiJALs-unsplash.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE0E0E0),
      body: Stack(
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF4052B5),
                  Color(0xFF7885CB),
                ],
              ),
            ),
          ),
          ListView(
            children: [
              _buildHeader(context),
              _buildCollectionHeader(context),
              _buildCollection(context)
            ],
          )
        ],
      ),
    );
  }

  Container _buildHeader(BuildContext context) {
    return Container(
      height: 240.0,
      margin: const EdgeInsets.only(top: 50.0),
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(
              top: 40.0,
              left: 40.0,
              right: 40.0,
              bottom: 10.0,
            ),
            child: Card(
              elevation: 5,
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 50.0,
                  ),
                  const Text("Milan Tarami"),
                  const SizedBox(
                    height: 5.0,
                  ),
                  const Text("Full Stack Developer"),
                  const SizedBox(
                    height: 16.0,
                  ),
                  SizedBox(
                    height: 40,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: ListTile(
                            title: const Text(
                              "102",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              "Posts".toUpperCase(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 12.0),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: const Text(
                              "1K",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              "Followers".toUpperCase(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 12.0),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: const Text(
                              "3k",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              "Following".toUpperCase(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 12.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Material(
                elevation: 5.0,
                shape: CircleBorder(),
                child: CircleAvatar(
                  radius: 40.0,
                  backgroundColor: Colors.red,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCollectionHeader(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text('Collection'),
                Text(
                  'Create New',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCollection(BuildContext context) {
    return SizedBox(
      height: 300.0,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: collections.length,
        itemBuilder: (_, idx) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(
                children: [
                  Image(
                    image: AssetImage(collections[idx]['image']),
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
