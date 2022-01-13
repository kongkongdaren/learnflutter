import 'package:flutter/material.dart';

class NavigatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
         child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             TextButton(
                 onPressed: null,
                 child: Text('Home'),
             ),
             TextButton(
               onPressed: (){
                 // Navigator.of(context).push(
                 //     MaterialPageRoute(
                 //       builder: (BuildContext context)=>Pager(title:'About')
                 //     )
                 // );
                 Navigator.pushNamed(context, '/about');
               },
               child: Text('About'),
             ),
            
           ],
         ),
       ),
    );
  }
}

class Pager extends StatelessWidget {
  final String title;

  Pager({
    this.title
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

