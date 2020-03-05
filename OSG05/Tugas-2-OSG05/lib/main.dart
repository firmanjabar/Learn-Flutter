import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('DetikNews'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          leading: Container(
            margin: EdgeInsets.only(left: 25),
            child: Icon(Icons.arrow_back, color: Colors.white),
          ),
          // title: Text('Flutter Demo'),
          actions: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 25),
              child: Icon(Icons.favorite_border),
            ),
          ],
        ),
        backgroundColor: Colors.black,
        body: LayoutStarts(),
      ),
    );
  }
}

class LayoutStarts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 30, right: 30, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                      style: TextStyle(color: Colors.white, fontSize: 14),
                      children: [
                        TextSpan(
                            text:
                                'Merdeka! Desa di Papua Ini Baru Pertama Kali\n'),
                        TextSpan(
                          text: 'Rayakan 17 Agustus Sejak 1945',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ]),
                ),
                SizedBox(
                  height: 10,
                ),
                RichText(
                  text: TextSpan(style: TextStyle(fontSize: 10), children: [
                    TextSpan(
                        text: 'Minggu, 18 Agustus 2019',
                        style: TextStyle(color: Colors.grey[300])),
                    TextSpan(text: '  (Wilpret Siagian - detikNews)'),
                  ]),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.network(
                  'https://akcdn.detik.net.id/community/media/visual/2019/08/18/b5502772-3d4c-4046-bce4-fa39b53093db_169.jpeg?w=780&q=90',
                  fit: BoxFit.fitWidth,
                  height: 200,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            margin: EdgeInsets.symmetric(horizontal: 25),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
              color: Colors.white,
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
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12),
                              children: [
                                TextSpan(
                                    text:
                                        'Jayapura - Desa Yongsu Sparai, Distrik Navenirara, Kabupaten Jayapura ini baru pertama kali merayakan HUT Kemerdekaan RI sejak tahun 1945. Bukan tidak cinta NKRI, akses mereka ke kota saja sulit karena infrastruktur yang rusak parah. \n\nTepat pada Sabtu, 17 Agustus 2019 pukul 08.00 WIT upacara pengibaran bendera Merah Putih dilaksanakan dengan inspektur upacara kepala Kampung, Welson Sorondanya. Upacara ini pun dihadiri sejumlah tokoh desa, warga desa hingga anak-anak sebagai peserta upacara. \n\nWelson Sorondanya dalam pidato upacaranya, mengatakan 17 Agustus merupakan hari bersejarah bangsa Indonesia dan hari ini sudah 74 tahun merdeka. Namun, dirinya sedih sekaligus bangga karena tahun ini di kampungnya baru pertama kali melakukan upacara.\n\n"Baru kali ini kita mengadakan upacara di kampung kita ini yang sudah lama merdeka," ujar Welson saat memberikan pidato kemerdekaan, Sabtu (17/8/2019). \n\nWelson berharap melalui momentum 17 Agustus ini pemerintah daerah bisa memperhatikan permasalahan di kampung Yongsu, sehingga ke depannya bisa maju seperti kampung lain. Dia juga bercerita, daerahnya baru dapat aliran listrik pada tahun ini. \n\n"Saat ini jalan menuju kampung kita sangat memprihatinkan, di saat musim hujan jalan tidak bisa dilewati oleh kendaraan." ...'),
                              ]),
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
    ));
  }
}
