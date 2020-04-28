import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
             Container(
              height:280,
              width: double.infinity,
              padding: EdgeInsets.only(left: 25, right: 25, top: 60),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50.0), 
                  bottomLeft: Radius.circular(115.0)
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  colors: [
                    Color.fromRGBO(255, 212, 0, 1),
                    Color.fromRGBO(255, 230, 78, 1),
                  ]
                ),
              ),
             ),

             Transform.translate(
              offset: Offset(10, -72),
              child: Container(
                height: 60,
                padding: EdgeInsets.only(left: 20, top: 6),
                margin: EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[350],
                      blurRadius: 20.0,
                      offset: Offset(0, 10.0)
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(150),
                    bottomRight: Radius.circular(50),
                  ),
                  color: Colors.white
                ),
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search, color: Colors.black, size: 22.0,),
                    border: InputBorder.none,
                    hintText: 'Search'
                  ),
                ),
              ),
            ),
          ]
        )
      ),
    );
  }
}
              