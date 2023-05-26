import 'package:bris/login_page.dart';
import 'package:bris/zone_five.dart';
import 'package:bris/zone_four.dart';
import 'package:bris/zone_one.dart';
import 'package:bris/zone_three.dart';
import 'package:bris/zone_two.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _buttons(context),
      ),
    );
  }
}

Widget _buttons(BuildContext context) {
  return DecoratedBox(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage("images/bg.png"),
        fit: BoxFit.cover,
      ),
    ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'images/zcseal.png',
            height: 100,
          ),
          SizedBox(height: 40),
          Text(
            'WELCOME',
            style: TextStyle(
              fontSize: 85,
              fontFamily: 'EastSeaDokdo',
              fontWeight: FontWeight.bold,
              letterSpacing: 7,
            ),
          ),
          Text(
            'Have A Nice Day',
            style: TextStyle(
              fontFamily: 'EastSeaDokdo',
              fontWeight: FontWeight.bold,
              fontSize: 25,
              letterSpacing: 2,
            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 120, vertical: 15),
              backgroundColor: Colors.yellow[600],
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ZoneOne()),
              );
            },
            child: Text(
              'Zone 1',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                letterSpacing: 1,
              ),
            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 120, vertical: 15),
              backgroundColor: Colors.yellow[600],
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ZoneTwo()),
              );
            },
            child: Text(
              'Zone 2',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                letterSpacing: 1,
              ),
            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 120, vertical: 15),
              backgroundColor: Colors.yellow[600],
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ZoneThree()),
              );
            },
            child: Text(
              'Zone 3',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                letterSpacing: 1,
              ),
            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 120, vertical: 15),
              backgroundColor: Colors.yellow[600],
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ZoneFour()),
              );
            },
            child: Text(
              'Zone 4',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                letterSpacing: 1,
              ),
            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 120, vertical: 15),
              backgroundColor: Colors.yellow[600],
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ZoneFive()),
              );
            },
            child: Text(
              'Zone 5',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                letterSpacing: 1,
              ),
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 3, horizontal: 20),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.zero),
                  ),
                  backgroundColor: Colors.lime[600],
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Log out',
                  style: TextStyle(
                    fontFamily: 'EastSeaDokdo',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(width: 50),
            ],
          ),
        ],
      ),
    ),
  );
}
