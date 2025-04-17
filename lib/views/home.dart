import 'package:flutter/material.dart';
import 'package:smit_flutter/components/message_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Wrap(
            spacing: 23.33,
            children: [
              Container(color: Colors.yellow, width: 200, height: 29),
              Container(color: Colors.red, width: 200, height: 29),
              Container(color: Colors.green, width: 200, height: 29),
              Container(color: Colors.blue, width: 200, height: 29),
              Container(color: Colors.purple, width: 200, height: 29),
            ],
          ),
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(color: Colors.yellow, width: 200, height: 200),
              Container(color: Colors.red, width: 100, height: 100),
              Container(color: Colors.green, width: 50, height: 100),
            ],
          ),SizedBox(height: 50,),  Stack(
            children: [
              Container(color: Colors.yellow, width: 200, height: 200),
              Positioned(bottom: 0,left: 0,child: Container(color: Colors.red, width: 100, height: 100)),
              Positioned(top: 0,right: 10,child: Container(color: Colors.green, width: 50, height: 100)),
            ],
          ),
        ],
      ),
    );
  }
}
