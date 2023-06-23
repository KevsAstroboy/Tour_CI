import 'package:flutter/material.dart';
import 'package:tour_ci/dhomepage.dart';
import 'package:tour_ci/splash_screen.dart';
import 'package:tour_ci/villes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedItemIndex = 0;
  final screens = <Widget>[DHomePage(),Villes(),];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedItemIndex],
      bottomNavigationBar: Row(
        children: <Widget>[
          buildNavBarItem(Image.asset('assets/home.png'), 0),
          buildNavBarItem(Image.asset('assets/location.png'), 1),
          buildNavBarItem(Image.asset('assets/ar.png'), 2),
          buildNavBarItem(Image.asset('assets/vr.png'), 3),
          buildNavBarItem(Image.asset('assets/person.png'), 4),
        ],
      ),
    );
  }

  Widget buildNavBarItem(Image image, int index) {
    return GestureDetector(
        onTap: () {
          setState(() {
            _selectedItemIndex = index;
          });
        },
        child: Container(
          height: 60,
          width: MediaQuery.of(context).size.width / 5,
          decoration: index == _selectedItemIndex
              ? BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 4, color: Colors.orange)),
                  //color: index == _selectedItemIndex ? Colors.green : Colors.white),
                  gradient: LinearGradient(colors: [
                    Colors.orange.withOpacity(0.3),
                    Colors.orange.withOpacity(0.015)
                  ], begin: Alignment.bottomCenter, end: Alignment.topCenter))
              : BoxDecoration(),
          child: image,
        ));
  }
}
