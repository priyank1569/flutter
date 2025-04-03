import 'package:drawercrud/bookList.dart';
import 'package:drawercrud/indexBook.dart';
import 'package:drawercrud/partView.dart';
import 'package:flutter/material.dart';

class viewBook extends StatefulWidget {
  const viewBook({super.key});

  @override
  State<viewBook> createState() => _viewBookState();
}

class _viewBookState extends State<viewBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("View Book"),),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(itemCount: bookList.addBook.length,itemBuilder:(context, index) {
                return ListTile(
                  onTap:() {
                      indexBook.indexGlobal = index;
                      Navigator.push(context,MaterialPageRoute(builder:(context) {
                        return partView();
                      },));
                  },
                  title: Text("BookName : "+bookList.addBook[index].bookName),subtitle: Text("Book Price : "+bookList.addBook[index].bookPrice.toString()),);
            },),
          )
        ],
      ),
    );
  }
}
