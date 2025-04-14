import 'package:flutter/material.dart';
import 'package:smit_flutter/components/message_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: Column(children: [ messageTile("shahzeb"),messageTile("huzaifa"),messageTile("ali"),messageTile("ahmed")]));
  }
}

