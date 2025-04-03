import 'package:drawercrud/bookList.dart';
import 'package:drawercrud/indexBook.dart';
import 'package:drawercrud/viewBook.dart';
import 'package:flutter/material.dart';

class partView extends StatefulWidget {
  const partView({super.key});

  @override
  State<partView> createState() => _partViewState();
}

class _partViewState extends State<partView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: indexBook.indexGlobal >= 0 && indexBook.indexGlobal < bookList.addBook.length ? Text("Book Name : "+bookList.addBook[indexBook.indexGlobal].bookName) : Text("NO"),),
      body:
      indexBook.indexGlobal >= 0 && indexBook.indexGlobal < bookList.addBook.length ? Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Book Name : "+bookList.addBook[indexBook.indexGlobal].bookName),
          SizedBox(height: 5,),
          Text("Book Price : "+bookList.addBook[indexBook.indexGlobal].bookPrice.toString()),
          SizedBox(height: 5,),
          Text("Book Pages : "+bookList.addBook[indexBook.indexGlobal].bookPage.toString()),
          SizedBox(height: 5,),
          Text("Book Author Name : "+bookList.addBook[indexBook.indexGlobal].bookAuthor),
          SizedBox(height: 5,),
          Text("Book Author Gender : "+bookList.addBook[indexBook.indexGlobal].AuthorGender),
          SizedBox(height: 5,),
          FloatingActionButton(onPressed:() {
            setState(() {
              bookList.addBook.removeAt(indexBook.indexGlobal);
              indexBook.indexGlobal = -1;
              Navigator.push(context,MaterialPageRoute(builder:(context) {
                return viewBook();
              },));
            });
          },child: Text("Delete"),)
        ],
      ) : SizedBox(height: 10,),
    );
  }
}
