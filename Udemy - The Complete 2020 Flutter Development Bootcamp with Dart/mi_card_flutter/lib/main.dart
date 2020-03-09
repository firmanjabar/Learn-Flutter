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
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 55.0,
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        'https://pbs.twimg.com/profile_images/1216180788909096960/xgByKsRu_400x400.jpg'),
                  ),
                  SizedBox(
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
                      fontFamily: 'SourceSansPro',
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                    width: 120.0,
                    child: Divider(
                      color: Colors.teal[100],
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone_android,
                        color: Colors.teal,
                      ),
                      title: Text(
                        '+62 899 2050 368',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'SourceSansPro',
                          color: Colors.blueGrey[800],
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 0.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.mail,
                        color: Colors.teal,
                      ),
                      title: Text(
                        'firmanabduljabar@gmail.com',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'SourceSansPro',
                          letterSpacing: 0.5,
                          color: Colors.blueGrey[800],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 0.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.school,
                        color: Colors.teal,
                      ),
                      title: Text(
                        'Lambung Mangkurat University',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'SourceSansPro',
                          letterSpacing: 0.5,
                          color: Colors.blueGrey[800],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
