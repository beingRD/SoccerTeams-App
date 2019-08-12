import 'package:flutter/material.dart';

class TeamDetail extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("List!"),
        backgroundColor: const Color(0xff000080),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _section("Cristiano Ronaldo", Color(0xffff9933)),
            _section("Lionel Messi", Color(0xffffffff)),
            _section("Neymar Jr", Color(0xff138808)),
          ],
        ),
      ),
    );
  }

  Widget _section(String title, Color color) {
    return Container(
      decoration: BoxDecoration(
        color: color,
      ),
      child: Text(title),
    );
  }
}
