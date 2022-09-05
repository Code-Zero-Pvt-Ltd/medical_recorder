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
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Back to Home'),
            trailing: const Icon(Icons.arrow_back_ios),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          // _buildDrawerListTile('Add New Records', Icons.add_box_rounded),
          // _buildDrawerListTile('View Records', Icons.view_list),
          // _buildDrawerListTile('View Doctors', Icons.view_list),
          // _buildDrawerListTile('View Nurses', Icons.view_list),
          // _buildDrawerListTile('View Patients', Icons.view_list),
          _buildDrawerListTile('Settings', Icons.settings),
          _buildDrawerListTile('FAQ', Icons.question_mark_rounded),
          _buildDrawerListTile('About Us', Icons.people_alt_rounded),
          _buildDrawerListTile('Contact Us', Icons.phone_in_talk_rounded),
        ],
      ),
    );
  }
  Widget _buildDrawerListTile(String title, IconData icon) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}
