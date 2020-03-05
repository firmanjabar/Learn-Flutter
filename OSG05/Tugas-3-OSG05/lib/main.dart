import 'package:flutter/material.dart';
import 'cabangOlahraga.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas 3',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(title: 'Tugas 3'),
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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: cabol.length,
        itemBuilder: (BuildContext context, int index) {
          return GridTile(
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return DetailItem(
                      cabol[index].name, cabol[index].img, cabol[index].desc);
                }));
              },
              child: Card(
                child: Container(
                  alignment: Alignment.center,
                  decoration: new BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(cabol[index].img),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
          );
        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class DetailItem extends StatelessWidget {
  final String name;
  final String img;
  final String desc;
  DetailItem(this.name, this.img, this.desc);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom: 20),
          child: Column(
            children: <Widget>[
              Container(
                height: 300,
                alignment: Alignment.center,
                decoration: new BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(img), fit: BoxFit.cover),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 25),
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                  color: Colors.grey[300],
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Icon(
                                  Icons.thumb_up,
                                  color: Colors.black54,
                                ),
                                Text('like'),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Icon(
                                  Icons.comment,
                                  color: Colors.black54,
                                ),
                                Text('comment'),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Icon(
                                  Icons.share,
                                  color: Colors.black54,
                                ),
                                Text('share'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            RichText(
                              textAlign: TextAlign.justify,
                              text: TextSpan(
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 12),
                                  children: [TextSpan(text: desc)]),
                            ),
                          ],
                        ),
                      ),
                    ],
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
