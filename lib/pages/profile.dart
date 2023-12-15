import 'package:flutter/material.dart';
import 'package:instafeed/InstaHomePage.dart';
import 'package:instafeed/pages/todo.dart';

class MyProfile extends StatelessWidget {
  var formlist;
  MyProfile({
    super.key,
    required this.formlist,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(248, 252, 169, 125),
          title: Center(
            child: Text('MyProfile                '),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0.04 * screenWidth,
                        0.04 * screenWidth,
                        0.04 * screenWidth,
                        0.14 * screenWidth),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(0.06 * screenWidth),
                      child: Image.network(
                        'https://cdn.bhdw.net/im/artistic-digital-art-of-a-techy-anime-girl-wallpaper-102547_w635.webp',
                        fit: BoxFit.cover,
                        height: 0.4 * screenWidth,
                        width: 0.9 * screenWidth,
                        scale: 1,
                        errorBuilder: (context, error, stackTrace) {
                          return Center(
                            child: Text('Error loading image'),
                          );
                        },
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0.355 * screenWidth,
                    left: 0.41 * screenWidth,
                    child: Container(
                      width: 0.16 * screenWidth,
                      height: 0.16 * screenWidth,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(0.8 * screenWidth),
                        border: Border.all(
                            color: Theme.of(context).primaryColor,
                            style: BorderStyle.solid,
                            width: 5),
                      ),
                      child: Stack(
                        children: [
                          SizedBox(
                            height: 0.16 * screenWidth,
                            width: 0.16 * screenWidth,
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(0.5 * screenWidth),
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRbiMjUoOxJCAMB9poSO2wLg34m7OxmyaT-A&usqp=CAU',
                                scale: 1,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 0.00 * screenWidth,
              ),
              DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    TabBar(
                      tabs: [
                        Tab(
                          icon: Icon(
                            Icons.list_alt_outlined,
                            size: 22,
                          ),
                        ),
                        Tab(
                          icon: Icon(
                            Icons.podcasts_outlined,
                            size: 22,
                          ),
                        ),
                        Tab(
                          icon: Icon(
                            Icons.label_important_outline,
                            size: 22,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenWidth,
                      child: TabBarView(
                        children: [
                          Container(
                            child: GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                mainAxisSpacing: 0.005 * screenWidth,
                                crossAxisSpacing: 0.005 * screenWidth,
                              ),
                              itemCount: 10,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(style: BorderStyle.solid),
                                  ),
                                  child: Center(
                                    child: Text('tab data'),
                                  ),
                                );
                              },
                            ),
                          ),
                          //tab2
                          Container(
                            child: Center(
                              child: Column(children: [
                                Text('Name: ${formlist[0][0].text}'),
                                Text('Email: ${formlist[1][0].text}'),
                                Text('Number: ${formlist[2][0].text}')
                              ]),
                            ),
                            height: screenWidth,
                            color: Theme.of(context).primaryColor,
                          ),
                          Container(
                            child: Center(child: Text('tab1')),
                            height: screenWidth,
                            color: Theme.of(context).primaryColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
