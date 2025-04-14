import 'package:flutter/material.dart';

Widget messageTile(String username){
  return ListTile(leading: CircleAvatar(backgroundColor: Colors.amber,),title: Text(username),subtitle: Text("Hi....."),trailing: Icon(Icons.call),);
}