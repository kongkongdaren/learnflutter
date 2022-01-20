import 'package:flutter/material.dart';
import 'demo/listview_demo.dart';
import 'demo/drawer_demo.dart';
import 'demo/bottomNavigationBar_demo.dart';
import 'demo/basic_demo.dart';
import 'demo/layout_demo.dart';
import 'demo/view_demo.dart';
import 'demo/sliver_demo.dart';
import './demo/navigator_demo.dart';
import './demo/form_demo.dart';
import './demo/material_components.dart';
import 'demo/state/state_management_demo.dart';
import 'demo/state/state_management_model_demo.dart';
import 'demo/stream/stream_demo.dart';
import 'demo/rxdart/rxdart_demo.dart';
import 'demo/bloc/bloc_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: NavigatorDemo(),
      initialRoute: '/bloc',
      routes: {
        '/': (context) => NavigatorDemo(),
        '/home': (context) => Home(),
        '/about': (context) => Pager(title: 'About'),
        '/form': (context) => FormDemo(),
        '/mdc': (context) => MaterialComponents(),
        '/state-management': (context) => StateManagementDemo(),
        '/state-management-model': (context) => StateManagementModelDemo(),
        '/stream': (context) => StreamDemo(),
        '/rxdart':(context) => RxDartDemo(),
        '/bloc':(context) => BlocDemo(),
      },
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
        accentColor: Color.fromRGBO(3, 54, 255, 1.0),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
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
                    Tab(icon: Icon(Icons.view_quilt)),
                    Tab(icon: Icon(Icons.dashboard)),
                  ]),
              centerTitle: true,
            ),
            body: TabBarView(children: [
              ListViewDemo(),
              BasicDemo(),
              LayoutDemo(),
              ViewDemo(),
              SliverDemo(),
            ]),
            drawer: DrawerDemo(),
            bottomNavigationBar: BottomNavigationBarDemo()));
  }
}
