import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Ohayo!"),
          backgroundColor: const Color(0xff000080),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xffff9933),
                ),
                child: Text(
                  "1",
                  style: TextStyle(
                    color: Colors.black,
                    backgroundColor: const Color(0xffff9933),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                ),
                child: Text(
                  "2",
                  style: TextStyle(
                    color: Colors.black,
                    backgroundColor: const Color(0xffffffff),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xff138808),
                ),
                child: Text(
                  "7",
                  style: TextStyle(
                    color: Colors.black,
                    backgroundColor: const Color(0xff138808),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
