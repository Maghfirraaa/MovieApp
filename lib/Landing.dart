import 'package:flutter/material.dart';
import 'package:tugasfigma/Register.dart';
import 'package:tugasfigma/SharedPref.dart';
import 'package:tugasfigma/login.dart';
import 'package:tugasfigma/main.dart';

class Landing extends StatefulWidget {
  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  void setTheme() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
  }

  bool isDarkmode = SharedPref.pref?.getBool('isDarkmode') ?? false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Image.asset(
                'image/images.jpg',
                width: 261.11,
                height: 262,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Find Your Film Favorite \n In Our Movie Catalog",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "Use your time to watch movies during family time \n You can find your favorite movie here.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black45,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 100,
              ),
              Builder(
                builder: (context) => RaisedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => login(
                                  setTheme: setTheme,
                                )));
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.red[900],
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(130, 16, 130, 16),
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Builder(
                  builder: (context) => OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Register()));
                        },
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    side: BorderSide(color: Colors.black54)))),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(130, 16, 130, 16),
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54),
                          ),
                        ),
                      )),
            ],
          ),
        ),
      ),
    );
  }
}
