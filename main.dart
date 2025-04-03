import 'package:drawercrud/SearchBook.dart';
import 'package:drawercrud/SearchBookMinMax.dart';
import 'package:drawercrud/SearchByName.dart';
import 'package:drawercrud/SearchNamed.dart';
import 'package:drawercrud/addBook.dart';
import 'package:drawercrud/partView.dart';
import 'package:drawercrud/viewBook.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: drawerView(),
  ));
}

class drawerView extends StatefulWidget {
  const drawerView({super.key});

  @override
  State<drawerView> createState() => _drawerViewState();
}

class _drawerViewState extends State<drawerView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HomePage"),),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(accountName: Text("Darshil"), accountEmail: Text("darshilpandit@gmail.com"),currentAccountPicture: ClipOval(child: Image.asset("Images/image.png",height: 150,width: 150,)),),
            ListTile(
              title: Text("Add Book"),
              onTap:() {
                Navigator.push(context,MaterialPageRoute(builder:(context) {
                    return addBook();
                },));
              },
            ),
            ListTile(
              title: Text("View Book"),
              onTap:() {
                  Navigator.push(context, MaterialPageRoute(builder:(context) {
                      return viewBook();
                  },));
              },
            ),
            ListTile(
              title: Text("Particular Book"),
              onTap:() {
                Navigator.push(context, MaterialPageRoute(builder:(context) {
                  return partView();
                },));
              },
            ),
            ListTile(
              title: Text("Particular Book"),
              onTap:() {
                Navigator.push(context, MaterialPageRoute(builder:(context) {
                  return partView();
                },));
              },
            ),
            ListTile(
              title: Text("Search Book By Price"),
              onTap:() {
                Navigator.push(context, MaterialPageRoute(builder:(context) {
                  return Searchbook();
                },));
              },
            ),
            ListTile(
              title: Text("Search Book By Price (MINMAX)"),
              onTap:() {
                Navigator.push(context, MaterialPageRoute(builder:(context) {
                  return Searchbookminmax();
                },));
              },
            ),
            ListTile(
              title: Text("Search Book By Name"),
              onTap:() {
                Navigator.push(context, MaterialPageRoute(builder:(context) {
                  return Searchbyname();
                },));
              },
            ),
            ListTile(
              title: Text("Search Named"),
              onTap:() {
                Navigator.push(context, MaterialPageRoute(builder:(context) {
                  return Searchnamed();
                },));
              },
            )
          ],
        ),
      ),
    );
  }
}

