import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_final_project/corusesclass.dart';

class corusespage extends StatefulWidget {
  @override
  State<corusespage> createState() => _corusespageState();
}

class _corusespageState extends State<corusespage> {
  var coruseses = [
    coruses(
        name: 'python crash coruses',
        image: 'images/python.png',
        des:
            'Python with the popular book Python Crash Course. The book has been described as the fastest way to learn Python.',
        link: 'https://www.youtube.com/watch?v=fqHZhNwYH90'),
    coruses(
        name: 'flutter crash coruses',
        image: 'images/flutter.png',
        des:
            "crash course we will look at Flutter for building native mobile apps. We will look at what Flutter is, how to get setup, built in widgets, stateless and stateful widgets, routing and more",
        link: 'https://www.youtube.com/watch?app=desktop&v=1gDhl4leEzA'),
    coruses(
        name: 'javascript',
        image: 'images/javascript.png',
        des:
            "In this crash course we will go over the fundamentals of JavaScript including more modern syntax like classes, arrow functions, etc. This is the starting point on my channel for learning JS",
        link: 'https://www.youtube.com/watch?v=hdI2bqOjy3c')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: coruseses.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(coruseses[index].image),
            title: Text(
              coruseses[index].name,
              style: TextStyle(fontSize: 15),
            ),
            subtitle: Text(
              coruseses[index].des,
              style: TextStyle(fontSize: 7),
            ),
            trailing: IconButton(
                onPressed: () {
                  Clipboard.setData(ClipboardData(text: coruseses[index].link));
                },
                icon: Icon(Icons.copy)),
          );
        },
      ),
      backgroundColor: const Color.fromARGB(255, 217, 208, 208),
    );
  }
}
