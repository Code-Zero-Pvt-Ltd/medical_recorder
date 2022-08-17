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
                title: Text('Add New Records'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('View Records'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('View Doctors'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('View Nurses'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('View Patients'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Settings'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('About Us'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Contact Us'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );

  }
}
