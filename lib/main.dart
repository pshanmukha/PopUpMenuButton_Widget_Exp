import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PopUpMenuButton Widget Exp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  PopUpMenuButtonScreen(),
    );
  }
}

class PopUpMenuButtonScreen extends StatefulWidget {
  const PopUpMenuButtonScreen({Key? key}) : super(key: key);

  @override
  _PopUpMenuButtonScreenState createState() => _PopUpMenuButtonScreenState();
}

class _PopUpMenuButtonScreenState extends State<PopUpMenuButtonScreen> {
  String title = 'First Page';
  String firstPage = 'First Page';
  String secondPage = 'Second Page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PopUpMenuButton Widget Exp"),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text(firstPage),
                value: firstPage,
              ),
              PopupMenuItem(
                child: Text(secondPage),
                value: secondPage,
              ),
            ],
            onSelected: (String newValue) {
              setState(() {
                title = newValue;
              });
            },
          )
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Text(title),
        ),
      ),
    );
  }
}
