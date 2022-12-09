import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Buildgrid(),);
  }
}
class Buildgrid extends StatefulWidget {
  const Buildgrid({Key? key}) : super(key: key);

  @override
  State<Buildgrid> createState() => _BuildgridState();
}

class _BuildgridState extends State<Buildgrid> {
  // List l=[100,200,300,400,500,600];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid Build"),
      ),
      body: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.blue,
            child: Text("index: $index"),
          );
        },
      ),
    );
  }
}




      /*GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3),
          itemCount:5,
          itemBuilder: (context,index){
        return Center(
          child: Container(color: Colors.blue,
          child: Text("Item $index"),),
        );
          }

      ),*/


