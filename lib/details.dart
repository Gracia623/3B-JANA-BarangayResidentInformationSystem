import 'package:flutter/material.dart';
import 'package:bris/zone_one.dart';

class Details extends StatefulWidget {
  final String name;

  const Details({Key? key, required this.name}) : super(key: key);
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  void showDeleteConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirmation'),
          content: Text('Are you sure you want to delete this record?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('No'),
            ),
            TextButton(
              onPressed: () {
                deleteRecord();
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
              child: Text('Yes'),
            ),
          ],
        );
      },
    );
  }

  void deleteRecord() {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _Detailss(context),
      ),
    );
  }

  Widget _Detailss(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
              Spacer(),
              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.edit,
                      color: Colors.black,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      showDeleteConfirmationDialog(context);
                    },
                    child: Icon(
                      Icons.delete,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 30),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Container(
                height: 200,
                width: 300,
                color: Colors.grey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      color: Colors.lime[800],
                      child: Center(
                        child: Text(
                          widget.name,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),                    SizedBox(height: 20),
                    Text(
                      'Details:',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Age: 20',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Birthday: January 1, 2002',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Cellphone: 123-456-7890',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Occupation: Engineer',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Email: email@example.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
