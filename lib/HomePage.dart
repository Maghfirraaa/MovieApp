import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:bottom_nav_bar/bottom_nav_bar.dart';
import 'package:tugasfigma/Landing.dart';
import 'package:tugasfigma/Setting.dart';
import 'SharedPref.dart';

class HomePage extends StatefulWidget {
  @override
  // Function setTheme;
  final String value;
  HomePage({Key? key, required this.value}) : super(key: key);
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // bool isDarkmode = SharedPref.pref?.getBool('isDarkmode') ?? false;
  // ThemeData themeData = ThemeData.light();

  /* fungsi mengubah tema sesuai inputan parameter */
  void setTheme(bool isDarkmode) {
    setState(() {
    });
  }

  @override
  void initState() {
    super.initState();
  }

  DateTime timeBackPressed = DateTime.now();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<String> kumpulanGambar = [
      "img_1.jpg",
      "img_2.jpg",
      "img_3.jpg",
      "img_4.jpg",
      "img_5.jpg",
      "img_5.jpg",
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: const Text(
          "MovieMax",
          style: TextStyle(color: Colors.white),
        ),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings,
                color: const Color.fromARGB(255, 253, 251, 251)),
            padding: EdgeInsets.only(right: 25),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(bottom: 15)),
          Container(
            child: new Text(
              'Selamat Datang',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(widget.value),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            width: 320,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Color.fromARGB(255, 39, 40, 40),
                width: 1,
              ),
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.only(left: 20),
                labelText: "Search",
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 10)),
          const Padding(
            padding: EdgeInsets.only(right: 250, top: 28, left: 5),
            child: Text(
              'Top Movie',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 5)),
          Expanded(
            child: GridView.builder(
              itemCount: kumpulanGambar.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('image/${kumpulanGambar[i]}'),
                );
              },
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() => _currentIndex = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Beranda'),
            activeColor: Colors.red,
            inactiveColor: Colors.black,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.message),
            title: Text('Chat'),
            activeColor: Colors.red,
            inactiveColor: Colors.black,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.work_history),
            title: Text(
              'History',
            ),
            activeColor: Colors.red,
            inactiveColor: Colors.black,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person),
            title: Text('Account'),
            activeColor: Colors.red,
            inactiveColor: Colors.black,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
