import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('flutter',style: TextStyle(fontWeight: FontWeight.bold),),
            accountEmail: Text('15711492842@163.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://picsum.photos/id/237/200/300'),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              image: DecorationImage(
                image:NetworkImage('https://picsum.photos/seed/picsum/200/300'),
                fit:BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.yellow[400].withOpacity(0.6),
                    BlendMode.hardLight
                ),

              ),
            ),
          ),
          // DrawerHeader(
          //   child: Text('header'.toUpperCase()),
          //   decoration: BoxDecoration(
          //     color: Colors.grey[100],
          //   ),
          // ),
          ListTile(
            title: Text('message',textAlign: TextAlign.right),
            trailing:Icon(Icons.message,color: Colors.black12,size: 22,) ,
            onTap: ()=>Navigator.pop(context),
          ),
          ListTile(
            title: Text('favorite',textAlign: TextAlign.right),
            trailing:Icon(Icons.favorite,color: Colors.black12,size: 22,) ,
            onTap: ()=>Navigator.pop(context),
          ),
          ListTile(
            title: Text('setting',textAlign: TextAlign.right),
            trailing:Icon(Icons.settings,color: Colors.black12,size: 22,) ,
            onTap: ()=>Navigator.pop(context),
          ),
        ],
      ),
    );
  }

}