import 'package:flutter/material.dart';

class my_projects extends StatefulWidget {
  const my_projects({super.key});

  @override
  State<my_projects> createState() => _my_projectsState();
}

class _my_projectsState extends State<my_projects> {
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
                                      Text(
                                        "Project Name",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
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
