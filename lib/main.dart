// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'package:flutter/material.dart';

void main() {
  runApp(const MainActivity());
}

class MainActivity extends StatefulWidget {
  const MainActivity({Key? key}) : super(key: key);

  @override
  State<MainActivity> createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medical Recorder',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Roboto',
        textTheme: const TextTheme(
          bodyText1: TextStyle(fontSize: 18),
          bodyText2: TextStyle(fontSize: 16),
          headline1: TextStyle(fontSize: 24),
          headline2: TextStyle(fontSize: 22),
          headline3: TextStyle(fontSize: 20),
          headline4: TextStyle(fontSize: 18),
          headline5: TextStyle(fontSize: 16),
          headline6: TextStyle(fontSize: 14),
          subtitle1: TextStyle(fontSize: 22),
          subtitle2: TextStyle(fontSize: 20),
          button: TextStyle(fontSize: 18),
          caption: TextStyle(fontSize: 16),
          overline: TextStyle(fontSize: 14),
        ),
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(tabs: [
              Tab(icon: Icon(Icons.dataset_outlined), text: 'Records'),
              Tab(icon: Icon(Icons.person_pin_outlined), text: 'Doctors',),
              Tab(icon: Icon(Icons.people_alt_outlined), text: 'Nurses',),
              Tab(icon: Icon(Icons.wheelchair_pickup_rounded), text: 'Patients',),
            ]),
            title: const Text('Dashboard'),
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.dataset_outlined),
              Icon(Icons.person_pin_outlined),
              Icon(Icons.people_alt_outlined),
              Icon(Icons.wheelchair_pickup_rounded),
            ],
          ),
          floatingActionButton: Theme(
            data: Theme.of(context).copyWith(
              colorScheme: Theme.of(context).colorScheme.copyWith(
                secondary: Colors.lightBlue[800],
              ),
            ),
            child: FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
          ),
          drawer: _buildDrawer(context),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.update),
                label: 'Update',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_circle),
                label: 'Add',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.delete_forever_rounded),
                label: 'Delete',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.lightBlue,
            ),
            child: Image(
              image: AssetImage('images/logo_black.png'),
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
