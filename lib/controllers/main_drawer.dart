import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  Widget buildListTile(String title, IconData icon) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () {
        // ...
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Colors.lightGreenAccent,
            child: Text(
              'Select Category',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Theme.of(context).primaryColor),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          buildListTile(
            'Health',
            Icons.handyman_outlined,
          ),
          buildListTile(
            'Wellness',
            Icons.access_alarm_rounded,
          ),
          buildListTile(
            'Politics',
            Icons.hourglass_bottom,
          ),
          buildListTile(
            'Travel',
            Icons.travel_explore_outlined,
          ),
          buildListTile(
            'Internet',
            Icons.web,
          ),
          buildListTile(
            'Lifestyle',
            Icons.restaurant,
          ),
          buildListTile(
            'Headlines',
            Icons.new_releases_outlined,
          ),
          buildListTile(
            'Sports',
            Icons.sports,
          ),
          buildListTile(
            'Science',
            Icons.science_rounded,
          ),
          buildListTile(
            'Environment',
            Icons.event_available,
          ),
        ],
      ),
    );
  }
}
