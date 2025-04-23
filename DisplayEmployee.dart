import 'package:compnaymanagment/List.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DisplayEmployee extends StatefulWidget {  
  const DisplayEmployee({super.key});

  @override
  State<DisplayEmployee> createState() => _DisplayEmployeeState();
}

class _DisplayEmployeeState extends State<DisplayEmployee> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body:
        ListView.builder(itemCount: GlobalList.lst.length,itemBuilder:
            (context, index) { return
          ListTile(title: Text(GlobalList.lst[index].ename),
          leading: Text(GlobalList.lst[index].edept),trailing: Text(GlobalList.lst[index].esal.toString()),
          onLongPress: () {
            setState(() {
              GlobalList.lst.removeAt(index);
            });
          },);
        },),
      );

  }
}
