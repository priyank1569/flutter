import 'package:compnaymanagment/List.dart';
import 'package:compnaymanagment/employee.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'UpdatePage.dart';


class Searchemployee extends StatefulWidget {
   Searchemployee({super.key});


  @override
  State<Searchemployee> createState() => _SearchemployeeState();
}

class _SearchemployeeState extends State<Searchemployee> {
  TextEditingController empsearch=new TextEditingController();
  List<employee>l1=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Expanded(
        child: Column(
          children: [
            TextField(controller: empsearch,decoration: InputDecoration(hintText: "Enter department  to search"),),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              for(int i=0;i<GlobalList.lst.length;i++)
                {
                  if(GlobalList.lst[i].edept==empsearch.text)
                    {
                      l1.add(GlobalList.lst[i]);

                      setState(() {
                        print(l1.length);
                      });
                    }
                }
            }, child: Text("Search")),

            Expanded(child:
            ListView.builder(itemCount: l1.length,itemBuilder: (context, index) {
              return ListTile(title: Text(l1[index].ename),);
            },)
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => UpdateEmp(),));
            }, child: Text("Go to Edit Page")),
          ],
        ),

      ),


    );
  }
}
