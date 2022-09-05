import 'package:flutter/material.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.lightBlue,
            ),
            child: Image(
              image: AssetImage('assets/images/logo_black.png'),
              fit: BoxFit.cover,
            ),
          ),
          _buildDrawerListTile('Back to Home', Icons.home, Icons.arrow_back_ios),
          _buildDrawerListTile('Settings', Icons.settings),
          _buildDrawerListTile('FAQ', Icons.question_mark_rounded),
          _buildDrawerListTile('About Us', Icons.people_alt_rounded),
          _buildDrawerListTile('Contact Us', Icons.phone_in_talk_rounded),
        ],
      ),
    );
  }

  Widget _buildDrawerListTile(String title, IconData leadingIcon, [IconData? trailingIcon]) {
    return ListTile(
      leading: Icon(leadingIcon),
      title: Text(title),
      trailing: Icon(trailingIcon),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}
