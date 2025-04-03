import 'package:drawercrud/bookList.dart';
import 'package:flutter/material.dart';

class Searchbookminmax extends StatefulWidget {
  const Searchbookminmax({super.key});

  @override
  State<Searchbookminmax> createState() => _SearchbookminmaxState();
}

class _SearchbookminmaxState extends State<Searchbookminmax> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MINMAX"),),
      body:Column(
        children: [
            Expanded(
              child: ListView.builder(itemCount: bookList.addBook.length,itemBuilder:(context, index) {
                  if(bookList.addBook[index].bookPrice < minMaxList.minMaxL[0] && bookList.addBook[index].bookPrice < minMaxList.minMaxL[1]){
                      return ListTile(
                        title: Text("Book Name : "+bookList.addBook[index].bookName),
                      );
                  }
              },),
            )
        ],
      ),
    );
  }
}
