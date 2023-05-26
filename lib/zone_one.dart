import 'package:bris/new_name.dart';
import 'package:flutter/material.dart';
import 'details.dart';
import 'home_page.dart';

class ZoneOne extends StatefulWidget {
  const ZoneOne({Key? key}) : super(key: key);

  @override
  State<ZoneOne> createState() => _ZoneOneState();
}

class _ZoneOneState extends State<ZoneOne> {
  List<String> names = [
    'Abbas, Al-khalid',
    'Alejandro, Ralph Anthony',
    'Amilasan, Jordan',
    'Balambao, Daniel Anthony',
    'Bayos, Garie Leo',
    'Bernardo, Rusty Ryan',
    'Canete, Jolex',
    'Canete, Justin Isaac',
    'Casipe, Robert',
    'Delos Reyes, Austin',
    'Falsis, Ronael Jesser',
    'Macrohon, Jerwin',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _OneList(context),
      ),
    );
  }

  Widget _OneList(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              Icon(Icons.search),
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
                    'Zone 1',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                height: 40,
                width: 300,
                color: Colors.transparent,
                child: Center(
                  child: Text(
                    '',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                height: 40,
                width: 300,
                color: Colors.lime[900],
                child: Center(
                  child: Text(
                    'NAME',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: names.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 40,
                    child: Row(
                      children: [
                        Expanded(
                          child: Stack(
                            alignment: Alignment.centerRight,
                            // Aligns the edit and delete buttons to the right
                            children: [
                              TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: index % 2 == 0
                                      ? Colors.grey
                                      : Colors.white,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          Details(
                                            name: names[index],
                                          ),
                                    ),
                                  );
                                },
                                child: Center(
                                  child: Text(
                                    names[index],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.edit),
                                    onPressed: () {
                                      _editName(index);
                                    },
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.delete),
                                    onPressed: () {
                                      _deleteName(index);
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          vertical: 1, horizontal: 10),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.zero),
                      ),
                      backgroundColor: Colors.lime[600],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NewName()),
                      );
                    },
                    child: Text(
                      'Add New Recipient',
                      style: TextStyle(
                        fontFamily: 'EastSeaDokdo',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 54)
                ],
              ),
              SizedBox(height: 40)
            ],
          ),
        ],
      ),
    );
  }

  void _editName(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String newName = names[index];
        return AlertDialog(
          title: Text('Edit Name'),
          content: TextField(
            onChanged: (value) {
              newName = value;
            },
            decoration: InputDecoration(hintText: 'Enter a new name'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  names[index] = newName;
                });
                Navigator.of(context).pop();
              },
              child: Text('Save'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  void _deleteName(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Delete Name'),
          content: Text('Are you sure you want to delete this name?'),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  names.removeAt(index);
                });
                Navigator.of(context).pop();
              },
              child: Text('Delete'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }
}
