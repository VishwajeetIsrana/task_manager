import 'package:flutter/material.dart';

class Recieved extends StatefulWidget {
  const Recieved({super.key});

  @override
  State<Recieved> createState() => _RecievedState();
}

class _RecievedState extends State<Recieved> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 25.0),
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(15), // Image border
                          child: SizedBox.fromSize(
                              child: Container(
                                  height: 70,
                                  width: 250,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Project Name",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Icon(Icons.done_all_outlined)
                                        ],
                                      ),
                                      Text("description of this project")
                                    ],
                                  ))),
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
