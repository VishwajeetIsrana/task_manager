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
    {"Name": "Vishal", "Number": "9975565549"},
    {"Name": "Shreyas", "Number": "5425186359"},
    {"Name": "Sammed", "Number": "9875656549"},
    {"Name": "Satish", "Number": "9773469149"},
    {"Name": "Sudarshan", "Number": "9765947638"},
    {"Name": "Tahir", "Number": "9975565549"},
    {"Name": "Aditya", "Number": "5425186359"},
    {"Name": "tushar", "Number": "9875656549"},
    {"Name": "Sanket", "Number": "9773469149"},
    {"Name": "Aniket", "Number": "9765947638"},
    {"Name": "Rohan", "Number": "9975565549"},
    {"Name": "Utkarsh", "Number": "5425186359"},
    {"Name": "Nitesh", "Number": "9875656549"},
    {"Name": "Shrenik", "Number": "9773469149"},
    {"Name": "Pradip", "Number": "9765947638"},
    {"Name": "Ashish", "Number": "9975565549"},
    {"Name": "Punit", "Number": "5425186359"},
    {"Name": "Neel", "Number": "9875656549"},
    {"Name": "Bahubali", "Number": "9773469149"},
    {"Name": "Prathmesh", "Number": "9765947638"},
    {"Name": "Pratik", "Number": "9975565549"},
    {"Name": "Indrajeet", "Number": "5425186359"},
    {"Name": "Siddharth", "Number": "9875656549"},
    {"Name": "Vitthal", "Number": "9773469149"},
    {"Name": "Saurabh", "Number": "9765947638"},
  ];

  // final numbers = [
  //   "9975565549",
  //   "5425186359",
  //   "9875656549",
  //   "9773469149",
  //   "9765947638"
  // ];
  List<String> tempArray = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(
            child: Text(
          "Add Members",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )),
      ),
      body: Container(
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: contacts.length,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      //logic of the creating group of chousing list
                      setState(() {
                        if (tempArray.contains(contacts[index].toString())) {
                          tempArray.remove(contacts[index].toString());
                        } else {
                          tempArray.add(contacts[index].toString());
                        }
                      });
                      print("my value");
                      print(tempArray.toString());
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  contacts[index]['Name'],
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  contacts[index]['Number'],
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: tempArray
                                          .contains(contacts[index].toString())
                                      ? Colors.red
                                      : Colors.purple,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Text(
                                  tempArray.contains(contacts[index].toString())
                                      ? 'Remove'
                                      : 'Add',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ));
            }),
      ),
    );
  }
}
