import 'package:flutter/material.dart';
import 'package:instafeed/InstaHomePage.dart';
import 'package:instafeed/pages/profile.dart';
import 'package:instafeed/pages/todo.dart';

void main() {
  runApp(InstaFeed());
}

class InstaFeed extends StatelessWidget {
  const InstaFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromARGB(249, 255, 198, 168),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => homepage3(),
        // '/MyProfile': (context) => MyProfile(formlist: ''),
        '/TodoTask': (context) => TodoTask(),
      },
    );
  }
}
