import 'package:compnaymanagment/List.dart';
import 'package:compnaymanagment/employee.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

  class AddEmployee extends StatelessWidget {
    AddEmployee({super.key});
    TextEditingController ename=new TextEditingController();
    TextEditingController edpet=new TextEditingController();
    TextEditingController esal=new TextEditingController();

    @override
    Widget build(BuildContext context) {
      return Column(
        children: [
          TextField(controller: ename,decoration: InputDecoration(hintText: "Enter name"),),
          TextField(controller: edpet,decoration: InputDecoration(hintText: "Enter department"),),
          TextField(controller: esal ,decoration: InputDecoration(hintText: "Enter salary"),),
          ElevatedButton(onPressed: (){
            //1.Creating object
            employee e=new employee();
            //2.Seeting vlaues
            e.ename=ename.text;
            e.edept=edpet.text;
            e.esal=int.parse(esal.text);
            //3.Adding into List
            GlobalList.lst.add(e);
            print(GlobalList.lst.length);

          }, child: Text("Add Employee")),
        ],
      );
    }
  }
