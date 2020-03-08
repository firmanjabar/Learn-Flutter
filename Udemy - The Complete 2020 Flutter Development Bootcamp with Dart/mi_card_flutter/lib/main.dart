import 'package:flutter/material.dart';

void main() => runApp(MiCard());

class MiCard extends StatelessWidget {
  const MiCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal[800],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 55.0,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(
                    'https://pbs.twimg.com/profile_images/1216180788909096960/xgByKsRu_400x400.jpg'),
              ),
              Container(
                width: double.infinity,
                height: 5.0,
              ),
              Text(
                'Firman Abdul Jabar',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 35.0,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  color: Colors.teal[100],
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  letterSpacing: 2.5,
                  // fontFamily: 'SourceSansPro',
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                width: 120.0,
                height: 0.5,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
