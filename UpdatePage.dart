import 'package:compnaymanagment/DisplayEmployee.dart';
import 'package:compnaymanagment/List.dart';
import 'package:compnaymanagment/employee.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpdateEmp extends StatefulWidget {
  const UpdateEmp({super.key});

  @override
  State<UpdateEmp> createState() => _UpdateEmpState();
}

class _UpdateEmpState extends State<UpdateEmp> {
  @override
  TextEditingController name=new TextEditingController();
  TextEditingController stream=new TextEditingController();
  TextEditingController sal=new TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Update Employee"),centerTitle: true,),
      body:
        Column(
          children: [
            TextField(controller: name,decoration: InputDecoration(hintText: "Enter name"),),
            TextField(controller: stream,decoration: InputDecoration(hintText: "Enter department"),),
            TextField(controller:  sal,decoration: InputDecoration(hintText: "Enter salary"),),
            ElevatedButton(onPressed: (){
              GlobalList.lst[GlobalList.selectedindex].ename=name.text;
              GlobalList.lst[GlobalList.selectedindex].edept=stream.text;
              GlobalList.lst[GlobalList.selectedindex].esal=int.parse(sal.text);
              Navigator.pop(context);
            }, child: Text("Update"))
          ],
        )
    );
  }
}
