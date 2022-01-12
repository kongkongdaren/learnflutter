import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return GridViewExtentDemo();
  }

}

class GridViewBuilderDemo extends StatelessWidget{
  Widget _gridItemBuilder(BuildContext context,int index){
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
        itemCount: posts.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount: 3,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16
        ),
        itemBuilder: _gridItemBuilder
    );
  }

}

class GridViewExtentDemo extends StatelessWidget{
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (index) {
      return Container(
        color: Colors.grey[3],
        alignment: Alignment(0.0, 0.0),
        child: Text(
          'Item $index',
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.extent(
      maxCrossAxisExtent: 150,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      // scrollDirection: Axis.horizontal,
      children: _buildTiles(100),
    );
  }
}

class GridViewCountDemo extends StatelessWidget{
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (index) {
      return Container(
        color: Colors.grey[3],
        alignment: Alignment(0.0, 0.0),
        child: Text(
          'Item $index',
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      scrollDirection: Axis.horizontal,
      children: _buildTiles(100),
    );
  }
}

class PageViewBuilderDemo extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: [
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
            bottom: 8,
            left: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  posts[index].title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(posts[index].author)
              ],
            )),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView.builder(
        itemCount: posts.length, itemBuilder: _pageItemBuilder);
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      // pageSnapping: false,
      // reverse: true,
      // scrollDirection: Axis.vertical,
      onPageChanged: (currentPage) => debugPrint('Page:$currentPage'),
      controller: PageController(
          initialPage: 0, keepPage: false, viewportFraction: 1.0),
      children: [
        Container(
          color: Colors.brown[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'ONE',
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.grey[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'TWO',
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.blueGrey[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'THREE',
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
