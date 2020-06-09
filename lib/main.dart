import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:gecko/DetailScreen.dart';
import 'package:gecko/SecondScreen.dart';
import 'package:gecko/ThirdScreen.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.


  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
      title: 'Gecko',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,

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

  String imageBell = "assets/bell.png";
  String descBell = "Bell Albino (di kenal juga dengan sebutan Florida Albino) adalah Albino terakhir dari strain Albino dan ditemukan oleh Mark Bell. Bell Albino lebih mudah di bedakan dari 2 jenis lainnya. Mata Bell Albino berwarna pink terang. Motif tubuhnya cenderung memiliki bintik-bintik cokelat. Bell albino juga dapat mengeluarkan warna lavender pada tubuh mereka.";
  String imageBli = 'assets/blizzard.png';
  String descBli = 'Morph Blizzard, ditemukan oleh Jay Villa dari Prehistoric Pets pada tahun 1995, sangat mirip dengan Murphy Patternless. Seperti Murphy Patternless, Blizzard adalah morph resesif sederhana. Sebagai anakan, Blizzard benar-benar tidak berpola dan warna mereka akan bervariasi dari putih, menjadi kuning, ke ungu tua. Ketika mereka tumbuh lebih tua. Blizzard yang memiliki warna gelap biasanya dipasarkan sebagai Midnight Blizzard. Blizzard yg memiliki warna lebih kuning sering dipasarkan sebagai Banana Blizzard, Banana Blizzard adalah Murphy Patternless Blizzard. Ciri lain yang tampaknya acak dari  Blizzard adalah Snake Eyes atau Solid Eyes.';
  String imageEc = 'assets/eclipse.png';
  String descEc ='Eclipse adalah morph yang memiliki sifat yang relatif baru yang hanya mempengaruhi mata saja, dan dapat dikombinasikan dengan beberapa pola. Morph ini memiliki mata hitam solid, atau merah solid dalam kasus albino strain. Beberapa contoh dari sifat ini adalah memiliki hanya separuh mata (ibarat bocor), atau setengah dari satu mata (kanan kiri beda), dan juga Snake Eyes. Tidak jelas tepatnya mengapa kondisi ini bisa terjadi. sifat ini diwariskan dalam mode resesif.';
  String imageMur = 'assets/murphy.png';
  String descMur = 'Awalnya ditemukan oleh Pat Murphy di tahun 1991, Murphy Patternless adalah Leopard Gecko yang tidak memiliki pola. Sebagai anakan, mereka akan menetas dengan tubuh cerah diwarnai dengan tanda cokelat, abu-abu, atau cokelat acak pada tubuh. Pada usia 10 bulan, tanda-tanda akan benar-benar memudar dan warna tubuh tokek akan bervariasi antara kuning dan ungu tua.';
  String imageshtct = 'assets/shtct.png';
  String descshtct ='Super Hypo Tangerine Carrot Tail/Baldy, merupakan variasi dari Tangerine dengan deskripsi kurangnya warna totol hitam/pigmen pada tubuh Leopard Gecko yang masuk dalam kategori non-albino, walaupun beberapa tubuhnya mungkin ada sedikit totol hitam seperti pada ekornya, sedikit pada bibir dan kepalanya. Adapun "Baldy" adalah istilah yang digunakan untuk menggambarkan Leopard Gecko yang benar-benar tidak memiliki warna hitam/pigmen di kepala nya, walaupun tidak semua "Baldy" juga Super-Hypo. Istilah Carrot Tail & Carrot Head menggambarkan posisi warna oranye pada tubuh Leopard Gecko.';
  String imagetang = 'assets/tangerin.png';
  String desctang = 'Tangerine (“Tang”), memiliki warna dasar tubuh oranye yang berbeda dengan warna kuning terang khas yang dapat dilihat pada Leopard Gecko normal. Intensitas warna oranye dapat bervariasi dari jingga-kuning hingga ke merah2an pada beberapa spesimen. Biasanya morph jenis ini di sebut morph normal.';
  String imagetrem ='assets/tremper.png';
  String desctrem = 'Tremper albino juga dikenal sebagai Texas Strain albino adalah Albino pertama dari tiga strain albino yang ditemukan pada tahun 1996 oleh Ron Tremper. Tremper Albino dapat berkisar dalam warna dari cokelat gelap ke kuning terang, jeruk, dan merah muda. Mata Tremper Albino cenderung menjadi warna perak dengan urat merah.';

  int currentIndex;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentIndex = 0;
  }

  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
    switch (currentIndex){
      case 0:
        Navigator.push( context,
          MaterialPageRoute(builder: (context) => MyHomePage()),
        );
        break;
      case 1:
        Navigator.push( context,
          MaterialPageRoute(builder: (context) => SecondScreen()),
        );
        break;
      case 2:
        Navigator.push( context,
          MaterialPageRoute(builder: (context) => ThirdScreen()),
        );
        break;

    }
  }

  _launchURL() async {
    const url = 'https://www.youtube.com/watch?v=SMRBIGq9VDA';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      //throw 'Could not launch $url';
      print("Not Print");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(onTap: () => _launchURL(),child: Icon(Icons.ondemand_video)),
                    Container(child: Image.asset("assets/icon.png",width: 100,)),
                  ],
                ),
              ),
              SizedBox(height: 5.0,),

              Divider(),
              SizedBox(width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        child: Text('Gecko',style: TextStyle(fontSize: 15.0,color: Colors.black87,fontWeight: FontWeight.bold),textAlign: TextAlign.left)
                    ),
                  )
              ),

              Divider(),

              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                        children: <Widget>[
                          InkWell(
                            onTap: (){
                              Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=> DetailScreen(image: imageBell,description: descBell,)));
                            },
                            child: Container(
                              height: 140,
                              width: 140,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                elevation: 4,
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    children: <Widget>[
                                      Container(child: Image.asset("assets/bell.png",width: 150,)),
                                      Text('Bell Gecko',style: TextStyle(fontSize: 11.0,color: Colors.black87,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=> DetailScreen(image: imageBli,description: descBli,)));
                            },
                            child: Container(
                              height: 140,
                              width: 140,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                elevation: 4,
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    children: <Widget>[
                                      Container(child: Image.asset("assets/blizzard.png",width: 150,)),
                                      Text('Blizzard Gecko',style: TextStyle(fontSize: 11.0,color: Colors.black87,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=> DetailScreen(image: imageEc,description: descEc,)));

                            },
                            child: Container(
                              height: 140,
                              width: 140,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                elevation: 4,
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    children: <Widget>[
                                      Container(child: Image.asset("assets/eclipse.png",width: 150,)),
                                      Text('Eclipse Gecko',style: TextStyle(fontSize: 11.0,color: Colors.black87,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=> DetailScreen(image: imageMur,description: descMur,)));

                            },
                            child: Container(
                              height: 140,
                              width: 140,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                elevation: 4,
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    children: <Widget>[
                                      Container(child: Image.asset("assets/murphy.png",width: 150,)),
                                      Text('Murphy Gecko',style: TextStyle(fontSize: 11.0,color: Colors.black87,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]
                    ),
                  )
              ),

              SizedBox(height: 10.0,),

              Divider(),
              SizedBox(width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        child: Text('Rare Gecko',style: TextStyle(fontSize: 15.0,color: Colors.black87,fontWeight: FontWeight.bold),textAlign: TextAlign.right)
                    ),
                  )
              ),
              Divider(),
              InkWell(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=> DetailScreen(image: imageshtct,description: descshtct,)));
                },
                child: SizedBox(
                  height: 140,
                  width: double.infinity,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(child: Image.asset("assets/shtct.png",width: 135,)),
                              SizedBox(width: 50.0,),
                              Text('SHTCT Gecko',style: TextStyle(fontSize: 20.0,color: Colors.black87,fontWeight: FontWeight.bold),textAlign: TextAlign.center),

                            ],
                          ),
                       ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0,),

              Divider(),
              SizedBox(width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        child: Text('Gecko Murah',style: TextStyle(fontSize: 15.0,color: Colors.black87,fontWeight: FontWeight.bold),textAlign: TextAlign.left)
                    ),
                  )
              ),

              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        onTap:(){
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=> DetailScreen(image: imagetang,description: desctang,)));

                        },
                        child: Container(
                          height: 140,
                          width: 240,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            elevation: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: <Widget>[
                                  Container(child: Image.asset("assets/tangerin.png",width: 90,)),
                                  Text('Tangerin Gecko',style: TextStyle(fontSize: 11.0,color: Colors.black87,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=> DetailScreen(image: imagetrem,description: desctrem,)));

                        },
                        child: Container(
                          height: 140,
                          width: 140,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            elevation: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(height: 10.0,),
                                  Container(child: Image.asset("assets/tremper.png",width: 100,)),
                                  Text('Tremper Gecko',style: TextStyle(fontSize: 11.0,color: Colors.black87,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]
                ),
              ),


            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => launch("tel://082123249916"),
        child: Icon(Icons.call),
        backgroundColor: Colors.orangeAccent,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BubbleBottomBar(
        hasNotch: true,
        fabLocation: BubbleBottomBarFabLocation.end,
        opacity: .2,
        currentIndex: currentIndex,
        onTap: changePage,
        borderRadius: BorderRadius.vertical(
            top: Radius.circular(
                16)), //border radius doesn't work when the notch is enabled.
        elevation: 8,
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
              backgroundColor: Colors.red,
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.home,
                color: Colors.red,
              ),
              title: Text("Home")),
          BubbleBottomBarItem(
              backgroundColor: Colors.deepPurple,
              icon: Icon(
                Icons.access_time,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.access_time,
                color: Colors.deepPurple,
              ),
              title: Text("Logs")),
          BubbleBottomBarItem(
              backgroundColor: Colors.indigo,
              icon: Icon(
                Icons.folder_open,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.folder_open,
                color: Colors.indigo,
              ),
              title: Text("Folders")),
        ],
      ),
    );
  }
}
