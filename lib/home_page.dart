import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> nameList = ["Don", "Jon", "Ron", "Son","Von"];
  List<Color> colorList =[Colors.amberAccent,Colors.white,Colors.teal,Colors.deepPurpleAccent,Colors.brown];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.blue,
          child: ListView.builder(
            itemBuilder: (context, index) => Container(
                height: 50,
                width: 25,
                color: colorList[index],
                child: Text(nameList[index])),
            itemCount: colorList.length,
          )),
    );
  }
}
