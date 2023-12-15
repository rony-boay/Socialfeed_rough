import 'package:flutter/material.dart';

import 'package:instafeed/pages/profile.dart';
import 'package:instafeed/InstaHomePage.dart';

class TodoTask extends StatelessWidget {
  TodoTask({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    TextEditingController nameform = TextEditingController();
    TextEditingController mailform = TextEditingController();
    TextEditingController contactform = TextEditingController();

    var formlist = [
      [nameform],
      [mailform],
      [contactform],
    ];

    List list = [
      ['Enter Your Name'],
      ['Enter E-Mail'],
      ['Enter Contact Number']
    ];

    List<String> n_button = [
      'Save',
      'Cancel',
    ];
    void savelogindata() {
      // Save data or perform actions here

      // Navigate to MyProfile screen after saving data
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MyProfile(formlist: formlist),
        ),
      );
    }

    Widget Savebutton = ElevatedButton(
      onPressed: savelogindata,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(248, 252, 169, 125),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.02 * screenWidth),
        ),
        minimumSize: Size(0.2 * screenWidth, 0.1 * screenWidth),
      ),
      child: Text(
        n_button[0],
        style: TextStyle(color: Colors.black),
      ),
    );

    void cancellogindata() {
      Navigator.pushNamed(context, '/');
      formlist.clear();
    }

    Widget Cancelbutton = ElevatedButton(
      onPressed: cancellogindata,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(248, 252, 169, 125),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.02 * screenWidth),
        ),
        minimumSize: Size(0.2 * screenWidth, 0.1 * screenWidth),
      ),
      child: Text(
        n_button[1],
        style: TextStyle(color: Colors.black),
      ),
    );

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(248, 252, 169, 125),
        title: Center(
          child: Text('Register             '),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.all(0.03 * screenWidth),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(248, 251, 175, 134),
                    borderRadius: BorderRadius.circular(0.02 * screenWidth),
                  ),
                  height: screenWidth,
                  width: screenWidth,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                        0.1 * screenWidth,
                        0.275 * screenWidth,
                        0.1 * screenWidth,
                        0.1 * screenWidth),
                    child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.fromLTRB(
                              0.0 * screenWidth,
                              0.02 * screenWidth,
                              0.0 * screenWidth,
                              0.02 * screenWidth),
                          child: TextFormField(
                            controller: formlist[index][0],
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Theme.of(context).primaryColor,
                              labelText: list[index][0],
                              hintText: list[index][0],
                              border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(0.04 * screenWidth),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Savebutton,
                  Cancelbutton,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
