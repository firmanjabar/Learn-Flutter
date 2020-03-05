import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'I am Flutter',
      home: MyHomePage(title: 'I am Flutter Dev'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[600],
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.indigo[900],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.network(
                'https://www.prixconstantin.com/wp-content/uploads/2020/01/CM_Flutter-dev-profile_Header.png'),
            Image.network(
                'https://www.fluper.com/blog/wp-content/uploads/2019/08/Why-Flutter-is-the-Future-of-Cross-Platform-App-Development.jpg'),
            Image.network(
                'https://blog.codemagic.io/uploads/2019/07/CM_Cross-platform-dev_FB-2.png'),
            Image.network(
                'https://mk0appinventiv4394ey.kinstacdn.com/wp-content/uploads/sites/1/2018/10/Flutter-for-Cross-Platform-Mobile-App-Development-Pros-Cons.jpg'),
          ],
        ),
      ),
    );
  }
}
