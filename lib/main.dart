// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'package:english_words/english_words.dart';
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
        primaryColor: Colors.lightBlue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dashboard'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Text('Medical Recorder'),
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Back to Home'),
                trailing: Icon(Icons.arrow_back_ios),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              buildListTile('Settings', Icons.settings),
              buildListTile('Add New Records', Icons.add_box_rounded),
              buildListTile('View Records', Icons.view_list),
              buildListTile('View Doctors', Icons.view_list),
              buildListTile('View Nurses', Icons.view_list),
              buildListTile('View Patients', Icons.view_list),
              buildListTile('Settings', Icons.settings),
              buildListTile('FAQ', Icons.question_mark_rounded),
              buildListTile('About Us', Icons.people_alt_rounded),
              buildListTile('Contact Us', Icons.phone_in_talk_rounded),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildListTile(String title, IconData icon) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}
