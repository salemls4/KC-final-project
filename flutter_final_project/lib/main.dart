import 'package:flutter/material.dart';
import 'package:flutter_final_project/bookpage.dart';
import 'package:flutter_final_project/corusespage.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int userselect = 0;
  List<Widget> widgetpages = [bookpage(), corusespage()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: userselect,
          backgroundColor: Color.fromARGB(255, 240, 233, 233),
          onTap: (index) {
            setState(() {
              userselect = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                label: "Books", icon: Icon(Icons.menu_book_outlined)),
            BottomNavigationBarItem(
                label: "Courses", icon: Icon(Icons.cast_for_education)),
          ],
        ),
        body: widgetpages.elementAt(userselect),
      ),
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.system,
    );
  }
}
