
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: HOMEpAGE(),
    );
  }
} 


class HOMEpAGE extends StatefulWidget {
  HOMEpAGE({Key key}) : super(key: key);

  @override
  _HOMEpAGEState createState() => _HOMEpAGEState();
}

class _HOMEpAGEState extends State<HOMEpAGE> {
  @override
  Widget build(BuildContext context) { 
    Size size = MediaQuery.of(context).size; 

    return Scaffold(
       bottomNavigationBar: Container(
         width: size.width,
         height: 100.0,
         color: Colors.blueAccent, 
         child: Row( 
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
             SizedBox(
               width: size.width * 0.8,
               child: TextField(
                 decoration: InputDecoration(
                   prefixIcon: Icon(Icons.anchor),  
                   labelText: "В ведите текст",
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.all(Radius.circular(50)) 
                     )
                 ),
               ),
             ),
             IconButton(
               icon: Icon(
                 Icons.send,
               ), 
               onPressed: null,
                 
             )
           ],
         ),
       ),
    );
  }
}