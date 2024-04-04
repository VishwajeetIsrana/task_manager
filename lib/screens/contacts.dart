import 'dart:collection';

import 'package:flutter/material.dart';

class contacts extends StatefulWidget {
  const contacts({super.key});

  @override
  State<contacts> createState() => _contactsState();
}

class _contactsState extends State<contacts> {
  List contacts = [
    {"Name": "vishwa", "Number": "9975565549"},
    {"Name": "Digu", "Number": "5425186359"},
    {"Name": "Gunda", "Number": "9875656549"},
    {"Name": "Rohit", "Number": "9773469149"},
    {"Name": "Swapnil", "Number": "9765947638"},
  ];

  final numbers = [
    "9975565549",
    "5425186359",
    "9875656549",
    "9773469149",
    "9765947638"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Center(child: Text("Contacts")),
      ),
      body: Container(
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: contacts.length,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          contacts[index]['Name'],
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          numbers[index],
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ));
            }),
      ),
    );
  }
}
