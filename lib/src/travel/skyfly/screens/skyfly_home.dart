import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges_accepted/src/travel/skyfly/screens/skyfly_book.dart';
import 'dart:math';

import '../config/skyfly_theme.dart';

class Tag {
  final String name;
  final bool isActive;
  Tag({required this.name, this.isActive = false});
}

class Location {
  final String name;
  final double price;
  final String image;
  Location({required this.name, required this.price, required this.image});
}

class SkyFlyHome extends StatelessWidget {
  static const String routeName = 'travel/skyfly/home';

  SkyFlyHome({Key? key}) : super(key: key);

  final List<Tag> _tags = [
    Tag(name: 'All', isActive: true),
    Tag(name: 'Flight', isActive: false),
    Tag(name: 'Train', isActive: false),
    Tag(name: 'Cruise', isActive: true),
    Tag(name: 'Cab', isActive: false),
    Tag(name: 'Pathao', isActive: false),
  ];

  final List<Location> _locations = [
    Location(
      name: 'Paris',
      price: 1500,
      image: 'assets/images/anthony-delanoix-Q0-fOL2nqZc-unsplash.jpg',
    ),
    Location(
      name: 'Rome',
      price: 1500,
      image: 'assets/images/l-a-l-a-s-z-a-S0hS0HfH_B8-unsplash.jpg',
    ),
    Location(
      name: 'Spain',
      price: 1500,
      image: 'assets/images/tomas-nozina-UP22zkjJGZo-unsplash.jpg',
    ),
    Location(
      name: 'Bali',
      price: 1500,
      image: 'assets/images/alfons-taekema-uOmhrkwy234-unsplash.jpg',
    ),
    Location(
      name: 'Pokhara',
      price: 1500,
      image: 'assets/images/meera-pankhania-7cENZhgyf7c-unsplash.jpg',
    ),
    Location(
      name: 'Kathmandu',
      price: 1500,
      image: 'assets/images/raimond-klavins-59Al83Zjtf8-unsplash.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10.0,
          ),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    'Where would \n you like to travel ',
                    style: TextStyle(
                      fontFamily: "Phonk Contrast DEMO",
                      fontSize: 20.0,
                      height: 1.8,
                      color: SkyflyTheme.textPrimary,
                    ),
                  ),
                  CircleAvatar(
                    radius: 25.0,
                    backgroundColor: SkyflyTheme.primary,
                  ),
                ],
              ),
              _buildSearchBox(context),
              _buildTagContainer(context),
              const SizedBox(height: 16),
              _buildTiles(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSearchBox(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          filled: true,
          hintStyle: TextStyle(color: Colors.grey[400]),
          hintText: "Search",
          fillColor: Colors.white70,
          suffixIcon: const Icon(
            Icons.tune,
            color: SkyflyTheme.textPrimary,
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
        ),
      ),
    );
  }

  Widget _buildTagContainer(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[for (var tag in _tags) _buildTag(context, tag)],
      ),
    );
  }

  Widget _buildTag(BuildContext context, Tag tag) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: Center(
        child: Text(
          tag.name,
          style: TextStyle(
            color: tag.isActive ? Colors.white : SkyflyTheme.textSecondary,
            fontSize: 18.0,
            fontFamily: 'Josefin Sans',
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: tag.isActive ? SkyflyTheme.primary : SkyflyTheme.secondary,
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }

  Widget _buildTiles(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        children: [
          for (var location in _locations)
            InkWell(
              child: _buildLocationTile(context, location, 400),
              onTap: () {
                Navigator.of(context).pushNamed(SkyflyBook.routeName);
              },
            )
        ],
      ),
    );
  }

  Widget _buildLocationTile(
      BuildContext context, Location location, double height) {
    return GridTile(
      child: Container(
        height: 160.0,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(location.image),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
      ),
      footer: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 4.0,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                '\$' + location.price.toString(),
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      ),
      header: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Text(
              location.name,
              style: const TextStyle(
                fontFamily: "Phonk Contrast DEMO",
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
    // return Container(
    //   height: 160.0,
    //   width: double.infinity,
    //   decoration: BoxDecoration(
    //     color: Colors.red,
    //     image: DecorationImage(
    //       image: AssetImage(location.image),
    //       fit: BoxFit.cover,
    //     ),
    //     borderRadius: BorderRadius.circular(12.0),
    //   ),
    //   margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
    //   child: Text(location.name),
    // );
  }
}
