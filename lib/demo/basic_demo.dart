import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      // color: Colors.grey[100],
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://i.picsum.photos/id/1080/6858/4574.jpg?hmac=qMYBjROs2Wu589QQXRAYsxDJu4ZuRQ4PKDpb3x_Oouw'),
          alignment: Alignment.topCenter,
          // repeat: ImageRepeat.repeatY,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
              Colors.indigoAccent[400].withOpacity(0.5),
              BlendMode.hardLight)
         ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Icon(Icons.pool, size: 32, color: Colors.white),
            // color: Color.fromRGBO(3, 54, 255, 1.0),
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.all(8),
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              // border: Border(
              //     top: BorderSide(
              //         color: Colors.indigoAccent[100],
              //         width: 3,
              //         style: BorderStyle.solid),
              //     bottom: BorderSide(
              //         color: Colors.indigoAccent[100],
              //         width: 3,
              //         style: BorderStyle.solid)),
              border: Border.all(
                  color: Colors.indigoAccent[100],
                  width: 3,
                  style: BorderStyle.solid),
              // borderRadius: BorderRadius.circular(16),
              // borderRadius: BorderRadius.only(
              //    topLeft: Radius.circular(64),
              //    bottomLeft: Radius.circular(64),
              // ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0.0, 0.0),
                  color: Color.fromRGBO(16, 20, 188, 1.0),
                  blurRadius: 1.0,
                  spreadRadius: -3.0
                ),
              ],
              shape: BoxShape.circle,
              // gradient: RadialGradient(
              //     colors:[
              //       Color.fromRGBO(7,102,255,1.0),
              //       Color.fromRGBO(3,28,128,1.0),
              //     ]
              // ),
              gradient: LinearGradient(
                  colors:[
                    Color.fromRGBO(7,102,255,1.0),
                    Color.fromRGBO(3,28,128,1.0),
                  ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
        text: TextSpan(
            text: 'flutter',
            style: TextStyle(
              color: Colors.deepPurpleAccent,
              fontSize: 34,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w100,
            ),
            children: [
          TextSpan(
              text: '.net',
              style: TextStyle(
                fontSize: 17,
                color: Colors.grey,
              ))
        ]));
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(fontSize: 18);
  final String _author = '李白';
  final String _title = '将进酒';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      '《$_title》- $_author \n 君不见黄河之水天上来，奔流到海不复回。君不见高堂明镜悲白发，朝如青丝暮成雪。人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来。烹羊宰牛且为乐，会须一饮三百杯。',
      textAlign: TextAlign.center,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}
