import 'package:bris/login_page.dart';
import 'package:bris/home_page.dart';
import 'package:flutter/material.dart';


void main() => runApp(const MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Bris(),
));

class Bris extends StatelessWidget {
  const Bris({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginPage(),
    );
  }
}


Widget homePage() {
  return Scaffold(
    body: homePage(),
  );
}

Widget ZoneOne() {
  return Scaffold(
    body: ZoneOne(),
  );
}

Widget NewName() {
  return Scaffold(
    body: NewName(),
  );
}

Widget Details() {
  return Scaffold(
    body: Details(),
  );
}

