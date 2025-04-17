import 'package:flutter/material.dart';

Widget messageTile(String username){
  return ListTile(leading: CircleAvatar(backgroundColor: Colors.amber,),title: Text(username),subtitle: Text("Hi....."),trailing: Icon(Icons.call),);
}

class MessageTile extends StatelessWidget {
  final username;
   MessageTile({super.key,required this.username});

  @override
  Widget build(BuildContext context) {
    return ListTile(leading: CircleAvatar(backgroundColor: Colors.amber,),title: Text(username),subtitle: Text("Hi....."),trailing: Icon(Icons.call),);
  }
}