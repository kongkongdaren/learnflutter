import 'package:flutter/material.dart';
import 'demo/listview_demo.dart';
import 'demo/drawer_demo.dart';
import 'demo/bottomNavigationBar_demo.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70),
    );
  }
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            title: Text("Flutter"),
            actions: [
              IconButton(
                  icon: Icon(Icons.search),
                  tooltip: 'Search',
                  onPressed: () => debugPrint('Search button is pressed')),
              IconButton(
                  icon: Icon(Icons.more_horiz),
                  tooltip: 'More',
                  onPressed: () => debugPrint('More button is pressed')),
            ],
            elevation: 0.0,
            bottom: TabBar(
                unselectedLabelColor: Colors.black38,
                indicatorColor: Colors.red,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 1.0,
                tabs: [
                  Tab(icon: Icon(Icons.local_florist)),
                  Tab(icon: Icon(Icons.change_history)),
                  Tab(icon: Icon(Icons.directions_bike)),
                ]),
            centerTitle: true,
          ),
          body: TabBarView(children: [
            ListViewDemo(),
            Icon(Icons.change_history, size: 128, color: Colors.black12),
            Icon(Icons.directions_bike, size: 128, color: Colors.black12),
          ]),
          drawer:DrawerDemo(),
          bottomNavigationBar: BottomNavigationBarDemo()
        ));
  }
}
