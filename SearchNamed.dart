import 'package:drawercrud/bookList.dart';
import 'package:flutter/material.dart';

class Searchnamed extends StatefulWidget {
  const Searchnamed({super.key});

  @override
  State<Searchnamed> createState() => _SearchnamedState();
}

class _SearchnamedState extends State<Searchnamed> {
  @override
  Widget build(BuildContext context) {
    int index = bookList.addBook.indexWhere((element) => element.bookName == searchName.sName,);
    return Scaffold(
      body: Center(
        child: index != -1 ?
        Column(
          children: [
            Text("Book Name: ${bookList.addBook[index].bookName}"),
            Text("Book Price: ${bookList.addBook[index].bookPrice}"),
          ],
        ) : Text("book not found"),
      )
    );
  }
}
