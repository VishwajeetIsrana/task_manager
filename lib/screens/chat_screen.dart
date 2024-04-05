import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class chat_screen extends StatefulWidget {
  const chat_screen({super.key});

  @override
  State<chat_screen> createState() => _chat_screenState();
}

class _chat_screenState extends State<chat_screen> {
  List Project = [
    {'project name': 'Zomato', 'Time': 'Complete The Task In 2 Months'},
    {'project name': 'Flipkart', 'Time': 'Complete The Task In 2 Months'},
    {'project name': 'VIP Bank', 'Time': 'Complete The Task In 2 Months'},
    {'project name': 'D Constuction', 'Time': 'Complete The Task In 2 Months'},
    {'project name': 'Printing World', 'Time': 'Complete The Task In 2 Months'},
    {'project name': 'Web News', 'Time': 'Complete The Task In 2 Months'},
    {'project name': 'E Comerse', 'Time': 'Complete The Task In 2 Months'},
    {
      'project name': 'Creative Acadmy',
      'Time': 'Complete The Task In 2 Months'
    },
    {
      'project name': 'Vishwa Transport',
      'Time': 'Complete The Task In 2 Hours'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(child: Text("Project Groups")),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: Project.length,
                    itemBuilder: (context, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(15), // Image border

                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                // boxShadow: [
                                //   BoxShadow(
                                //     blurRadius: 10,
                                //     color: Colors.black26,
                                //     spreadRadius: 1,
                                //   ),
                                // ],
                                border: Border.all(color: Colors.black38),
                                borderRadius: BorderRadius.circular(15)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.black),
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            color: Colors.black12),
                                        child: Icon(Icons.work),
                                      ),
                                      SizedBox(
                                        width: 40,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            Project[index]['project name'],
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            Project[index]['Time'],
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
