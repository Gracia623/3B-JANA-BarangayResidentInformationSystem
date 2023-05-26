import 'package:flutter/material.dart';

class NewName extends StatefulWidget {
  const NewName({Key? key}) : super(key: key);

  @override
  State<NewName> createState() => _NewNameState();
}

class _NewNameState extends State<NewName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _AddName(context),
      ),
    );
  }
}

Widget _AddName(BuildContext context) {
  return DecoratedBox(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage("images/bg.png"),
        fit: BoxFit.cover,
      ),
    ),
    child: Column(
      children: [
        SizedBox(height: 100),
        Row(
          children: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              height: 40,
              width: 300,
              color: Colors.lime[800],
              child: Center(
                child: Text(
                  'Add New Recipient',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              color: Colors.grey, // Set the background color of the container
              padding: EdgeInsets.all(20), // Add padding for spacing
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildTextFieldContainer('Last Name'),
                      _buildTextFieldContainer('First Name'),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildTextFieldContainer('Age'),
                      _buildTextFieldContainer('Occupation'),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildTextFieldContainer('Birthdate'),
                      _buildTextFieldContainer('Number'),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildTextFieldContainer('Email'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 1, horizontal: 10),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.zero),
            ),
            backgroundColor: Colors.lime[600],
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'Add',
            style: TextStyle(
              fontFamily: 'EastSeaDokdo',
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _buildTextFieldContainer(String labelText) {
  return Container(
    width: 150,
    child: TextField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(),
        hintText: 'Enter $labelText',
        hintStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        labelText: labelText,
        labelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ),
  );
}
