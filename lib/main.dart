// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'package:flutter/material.dart';

import 'package:medical_recorder/add_doctor_form.dart';
import 'package:medical_recorder/widgets/expandable_fab.dart';
import 'package:medical_recorder/widgets/navigation_drawer.dart';
void main() {
  runApp(const MainActivity());
}

class MainActivity extends StatefulWidget {
  const MainActivity({Key? key}) : super(key: key);

  @override
  State<MainActivity> createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
  static const _actionTitles = ['Create Post', 'Upload Photo', "Upload Video"];

  void _showAction(BuildContext context, int index) {
    showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(_actionTitles[index]),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text("CLOSE"),
            ),
          ],
        );
      },
    );
  }

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
              Tab(
                icon: Icon(Icons.person_pin_outlined),
                text: 'Doctors',
              ),
              Tab(
                icon: Icon(Icons.people_alt_outlined),
                text: 'Nurses',
              ),
              Tab(
                icon: Icon(Icons.wheelchair_pickup_rounded),
                text: 'Patients',
              ),
            ]),
            title: const Text('Medical Recorder'),
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.dataset_outlined),
              AddDoctorForm(),
              Icon(Icons.people_alt_outlined),
              Icon(Icons.wheelchair_pickup_rounded),
            ],
          ),
          floatingActionButton: ExpandableFab(
            distance: 112.0,
            children: [
              ActionButton(
                onPressed: () => _showAction(context, 0),
                icon: const Icon(Icons.edit),
              ),
              ActionButton(
                onPressed: () => _showAction(context, 1),
                icon: const Icon(Icons.add_circle),
              ),
              ActionButton(
                onPressed: () => _showAction(context, 2),
                icon: const Icon(Icons.delete_forever_rounded),
              ),
            ],
          ),
          drawer: const NavigationDrawer(),
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
}


