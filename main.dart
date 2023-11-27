import 'package:flutter/material.dart';
import 'don_widg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      home: MyHomePage(title: 'Hello World'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  final List<String> people = ["Don", "Matthew", "Delos Angeles"];

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: backgroundColor,
      body: buildListView(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: appBarColor,
      title: Row(
        children: [
          Icon(Icons.home),
          SizedBox(width: 10),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: Text(title),
          ),
        ],
      ),
    );
  }

  Widget buildListView() {
    return ListView.builder(
      itemCount: people.length,
      itemBuilder: (context, index) {
        return BanixCard(name: people[index]);
      },
    );
  }
}

class Don extends StatelessWidget {
  final String name;

  const BanixCard({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Your BanixCard widget implementation
    return Container();
  }
}

const Color appBarColor = Color(0xFFc5626a);
const Color backgroundColor = Color(0xFF335e80);
