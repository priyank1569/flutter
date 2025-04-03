import 'package:drawercrud/SearchNamed.dart';
import 'package:drawercrud/bookList.dart';
import 'package:flutter/material.dart';

class Searchbyname extends StatefulWidget {
  const Searchbyname({super.key});

  @override
  State<Searchbyname> createState() => _SearchbynameState();
}

class _SearchbynameState extends State<Searchbyname> {
  TextEditingController bname = TextEditingController()
;  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Search By Name"),),
      body: Column(
        children: [
          TextField(controller: bname,decoration: InputDecoration(hintText: "Enter Book Name"),),
          FloatingActionButton(onPressed:() {
              setState(() {
                  searchName.sName = "";
                  searchName.sName = bname.text;
                  Navigator.push(context,MaterialPageRoute(builder: (context) {
                    return Searchnamed();
                  },));
              });
          },child: Text("Search"),)
        ],
      ),
    );
  }
}
