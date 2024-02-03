import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Chess Board'),
        ),
        body: ChessBoard(),
      ),
    );
  }
}

class ChessBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        itemCount: 64,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 8,
        ),
        itemBuilder: (BuildContext context, int index) {
          // Alternate the colors for the chessboard
          Color color = (index ~/ 8 + index) % 2 == 0 ? Colors.white : Colors.black;

          return Container(
            color: color,
            child: Center(
              child: Text(
                '',
                style: TextStyle(color: Colors.black),
              ),
            ),
          );
        },
      ),
    );
  }
}
