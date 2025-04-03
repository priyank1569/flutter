import 'package:drawercrud/bookData.dart';
import 'package:drawercrud/bookList.dart';
import 'package:flutter/material.dart';

class addBook extends StatefulWidget {
  const addBook({super.key});

  @override
  State<addBook> createState() => _addBookState();
}

class _addBookState extends State<addBook> {
  TextEditingController bname =TextEditingController();
  double bpage = 50.0;
  TextEditingController bauthor = TextEditingController();
  TextEditingController bprice = TextEditingController();
  bool aAgeMale = false;
  bool aAgeFeMale = false;
  String aAgeValue = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Book"),),
      body: Column(
        children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(32.0,10.0,32.0,8.0),
              child: TextField(controller: bname,decoration: InputDecoration(hintText: "Enter Book Name : ",border: OutlineInputBorder()),),
            ),
            Slider(min: 0,max: 100,value: bpage, onChanged:(value) {
              setState(() {
                bpage=value;
              });
            },),
            Text("Book Pages : "+bpage.toInt().toString(),style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,color: Colors.deepPurpleAccent),),
            Padding(
              padding: const EdgeInsets.fromLTRB(32.0,8.0,32.0,8.0),
              child: TextField(controller: bauthor,decoration: InputDecoration(hintText: "Enter Book Author Name : ",border: OutlineInputBorder()),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32.0,8.0,32.0,8.0),
              child: TextField(controller: bprice,decoration: InputDecoration(hintText: "Enter Book Price : ",border: OutlineInputBorder()),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Male",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,color: Colors.deepPurpleAccent)),
                Checkbox(value: aAgeMale, onChanged: (bool ? value) {
                  setState(() {
                    aAgeMale = value!;
                    aAgeFeMale = false;
                    aAgeValue = "Male";
                  });
                },),
                Text("Female",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,color: Colors.deepPurpleAccent)),
                Checkbox(value: aAgeFeMale, onChanged: (bool ? value) {
                  setState(() {
                    aAgeFeMale = value!;
                    aAgeMale = false;
                    aAgeValue = "FeMale";
                  });
                },),
              ],
            ),
          SizedBox(height: 20,),
          FloatingActionButton(onPressed:() {
            setState(() {
              bookData b = new bookData();
              b.bookName = bname.text;
              b.bookPage = bpage.toInt();
              b.bookAuthor = bauthor.text;
              b.bookPrice = int.parse(bprice.text);
              b.AuthorGender = aAgeValue;
              bookList.addBook.add(b);
              print(bookList.addBook.length);
              bname.clear();
              bpage = 50.0;
              bauthor.clear();
              bprice.clear();
              aAgeMale = false;
              aAgeFeMale = false;
            });
          },child: Text("Submit"),)
        ],
      ),
    );
  }
}
