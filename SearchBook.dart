import 'package:drawercrud/SearchBookMinMax.dart';
import 'package:drawercrud/bookList.dart';
import 'package:flutter/material.dart';

class Searchbook extends StatefulWidget {
  const Searchbook({super.key});

  @override
  State<Searchbook> createState() => _SearchbookState();
}

class _SearchbookState extends State<Searchbook> {
  TextEditingController min = TextEditingController();
  TextEditingController max = TextEditingController();
  int min1 = 0;
  int max1 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MinMax"),),
      body: Column(
        children: [
          TextField(controller: min,decoration: InputDecoration(hintText: "Enter Minimum Value : "),),
          TextField(controller: max,decoration: InputDecoration(hintText: "Enter Maximum Value : "),),
          FloatingActionButton(onPressed:() {
            setState(() {
                min1 = int.parse(min.text);
                max1 = int.parse(max.text);
                minMaxList.minMaxL.add(min1);
                minMaxList.minMaxL.add(max1);
                Navigator.push(context,MaterialPageRoute(builder:(context) {
                  return Searchbookminmax();
                },));
            });
          },child: Text("Search By min&max"),)
        ],
      ),
    );
  }
}
