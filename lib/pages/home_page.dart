import 'package:flutter/material.dart';
import 'package:kiosk_ui/component/carasoul.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 300,
        toolbarHeight: 100,
        leading: Image.network(
          'https://assets-cdn.kathmandupost.com/uploads/source/news/2015/miscellaneous/01102015081334NMB-Bank-Logo-copy.jpg',
          fit: BoxFit.contain,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(
              children: [Text('Mon| 10:36 AM'), Text('January 1, 2024')],
            ),
          )
        ],
      ),
      body: Column(
        children: [Carasoul()],
      ),
    );
  }
}
