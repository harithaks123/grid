import 'package:flutter/material.dart';

void main() {
  runApp(GeeksForGeeks());
}

class GeeksForGeeks extends StatelessWidget {

// This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: Center(
            child: Text(
              'Flutter GridView Demo',
              style: TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ),
        ),
        body: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          shrinkWrap: true,
          children: List.generate(20, (index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://th.bing.com/th/id/R.b2d5805b0d8158cd630c83a65d084fa8?rik=3vR4BLIDSFFjZg&riu=http%3a%2f%2ftop10tale.com%2fwp-content%2fuploads%2f2016%2f03%2fhd-flower-images-3.jpg&ehk=OuDccKR0K0ztD%2fULk1SPbXjYOqZUIbPzNGnBE51EY5o%3d&risl=&pid=ImgRaw&r=0'
                        ''),
                    fit: BoxFit.cover,
                  ),
                  borderRadius:
                  BorderRadius.all(Radius.circular(20.0),),
                ),
              ),
            );
          },),
        ),
      ),
    );
  }
}
