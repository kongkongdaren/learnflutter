
import 'package:flutter/material.dart';
import 'dart:async';

class BottomSheetDemo extends StatefulWidget {

  @override
  _BottomSheetDemoState createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {
  final _bottomSheetScaffoldKey=GlobalKey<ScaffoldState>();
  String _option='Nothing';
  _openBottomSheet(){
    _bottomSheetScaffoldKey
        .currentState
        .showBottomSheet((context){
          return BottomAppBar(
             child: Container(
                height: 90.0,
               width: double.infinity,
               padding: EdgeInsets.all(16.0),
               child: Row(
                 children: [
                   Icon(Icons.pause_circle_outline),
                   SizedBox(width: 16.0,),
                   Text('01:30/03:30'),
                   Expanded(
                       child:Text('Fix you -Coldplay',textAlign: TextAlign.right,)
                   ),
                 ],
               ),
             ),
          );
    });
  }
 Future _openModalBottomSheet() async{
  final option=  await showModalBottomSheet(
        context: context,
        builder: (BuildContext context){
           return Container(
             height: 200.0,
             child: Column(
               children: [
                 ListTile(
                   title: Text('Option A'),
                   onTap: (){
                     Navigator.pop(context,'A');
                   },
                 ),
                 ListTile(
                   title: Text('Option B'),
                   onTap: (){
                     Navigator.pop(context,'B');
                   },
                 ),
                 ListTile(
                   title: Text('Option C'),
                   onTap: (){
                     Navigator.pop(context,'C');
                   },
                 ),
               ],
             ),
           );
        }
    );
  switch(option){
    case 'A':
      setState(() {
        _option='A';
      });
      break;
    case 'B':
      setState(() {
        _option='B';
      });
      break;
    case 'C':
      setState(() {
        _option='C';
      });
      break;
    default:

  }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _bottomSheetScaffoldKey,
      appBar: AppBar(
        title: Text('BottomSheetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('you choice is: $_option'),
            SizedBox(height: 16.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  child: Text('Open BottomSheet'),
                  onPressed: _openBottomSheet,
                ),
                FlatButton(
                  child: Text('Modal BottomSheet'),
                  onPressed: _openModalBottomSheet,
                ),

              ],
            )
          ],
        ),
      ),
    );

  }
}
