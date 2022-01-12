import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      // child: Column(
      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     IconBadge(Icons.pool),
      //     IconBadge(Icons.beach_access),
      //     IconBadge(Icons.airplanemode_active),
      //   ],
      // ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ConstrainedBox(
              constraints: BoxConstraints(
                 minHeight: 200,
                maxWidth: 200,
              ),
            child: Container(
               color: Color.fromRGBO(3,54, 255, 1.0),
            ),
          )
        ],
      ),
    );
  }
}


class AspectRatioDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return           AspectRatio(
      aspectRatio: 3.0/2.0,
      child: Container(
        color: Color.fromRGBO(3, 54, 255, 1.0),
      ),
    );
  }

}

class StackDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return           Stack(
       children: [
         SizedBox(
           width: 200,
           height: 300,
           child: Container(
             decoration: BoxDecoration(
               color: Color.fromRGBO(3, 54, 255, 1.0),
               borderRadius: BorderRadius.circular(8),
             ),
             child: Icon(
               Icons.ac_unit,
               color: Colors.white,
               size: 32,
             ),
           ),
         ),
         SizedBox(
           height: 32,
         ),
         SizedBox(
           width: 100,
           height: 100,
           child: Container(
             alignment: Alignment.topCenter,
             decoration: BoxDecoration(
               color: Color.fromRGBO(3, 54, 255, 1.0),
               borderRadius: BorderRadius.circular(8),
             ),
             child: Icon(
               Icons.brightness_2,
               color: Colors.white,
               size: 32,
             ),
           ),
         ),
         Positioned(
             right: 20,
             top: 20,
             child: Icon(Icons.ac_unit, color: Colors.white, size: 32)),
       ],
     );
  }

}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  const IconBadge(this.icon, {this.size = 32});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(
        icon,
        size: size,
        color: Colors.white,
      ),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}
