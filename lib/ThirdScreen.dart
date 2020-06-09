import 'package:flutter/material.dart';
import 'package:gecko/SecondScreen.dart';
import 'package:gecko/main.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  int currentIndex;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentIndex = 2;
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tips & Tricks'),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(width: double.infinity,child: Container(child: Text("Pemeliharaan dan Pemberian Makanan",style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),textAlign: TextAlign.left,))),
              ),
              Container(child: Image.asset("assets/wadah.jpeg",)),
              SizedBox(height: 10.0,),
              SingleChildScrollView(
                child: SizedBox(
                  width: double.infinity,
                  child: Container(
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text('Sediakan wadah air yang dangkal. Mangkuk air lebar dan dangkal adalah yang terbaik, untuk membiarkan leopard gecko minum dan mandi tanpa ada risiko tenggelam yang signifikan. Letakkan wadah di sisi tangki yang lebih sejuk. Isi lagi dan bersihkan kapan pun diperlukan, biasanya dua hari sekali.',style: TextStyle(fontSize: 11.0,color: Colors.black87,fontWeight: FontWeight.bold),textAlign: TextAlign.justify,),
                      ),
                    ),
                  ),
                ),
              ),

              //konten  2
              SizedBox(height: 10.0,),
              Container(child: Image.asset("assets/wadahterpi.jpeg",)),
              SizedBox(height: 10.0,),
              SingleChildScrollView(
                child: SizedBox(
                  width: double.infinity,
                  child: Container(
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text('Sediakan wadah terpisah untuk serangga hidup. Jangkrik hidup adalah sumber makanan yang paling umum diberikan pada leopard gecko, tetapi Anda juga bisa memberikan kecoa dubia hidup, bisa dibeli di toko binatang peliharaan.[7] Ulat hongkong dan ulat lilin juga bisa diberikan, tetapi karena kandungan lemaknya tinggi, Anda bisa memberikannya sebagai suplemen sewaktu-waktu untuk variasi makanan utamanya. Karena leopard gecko jarang sekali makan serangga yang sudah mati, Anda perlu wadah plastik dengan lubang di penutupnya agar serangga tetap hidup. Anda bisa membelinya di toko binatang peliharaan, atau pelihara serangga di wadah lebih besar dengan jumlah yang cukup untuk berkembang biak.\n\nUntuk menjadi makanan yang aman dan menarik bagi leopard gecko, ukuran serangga harus sedikit lebih kecil dibanding kepala leopard gecko.\n\nBila memelihara ulat hongkong dalam jangka pendek, simpan di kulkas. Bila Anda mengembangbiakkan ulat, pelihara di suhu ruangan hingga ulat tumbuh berubah menjadi serangga.',style: TextStyle(fontSize: 11.0,color: Colors.black87,fontWeight: FontWeight.bold),textAlign: TextAlign.justify,),
                      ),
                    ),
                  ),
                ),
              ),

              //konten 3
              SizedBox(height: 10.0,),
              Container(child: Image.asset("assets/vit.jpeg",)),
              SizedBox(height: 10.0,),
              SingleChildScrollView(
                child: SizedBox(
                  width: double.infinity,
                  child: Container(
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text('Tambahkan vitamin pada serangga. Beli bubuk kalsium dan vitamin D bubuk untuk reptil yang sering di sebut "bubuk debu/ dusting powder." Sebelum memberi makan serangga pada leopard gecko, simpan serangga dalam kantong berisi bubuk ini, dan kocok kantong hingga serangga tertutup sempurna dengan bubuk putih. Beri makan leopard gecko secepatnya seperti yang ditulis di bawah.',style: TextStyle(fontSize: 11.0,color: Colors.black87,fontWeight: FontWeight.bold),textAlign: TextAlign.justify,),
                      ),
                    ),
                  ),
                ),
              ),

              //konten 4
              SizedBox(height: 10.0,),
              Container(child: Image.asset("assets/nutri.jpeg",)),
              SizedBox(height: 10.0,),
              SingleChildScrollView(
                child: SizedBox(
                  width: double.infinity,
                  child: Container(
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text('Tambahkan nutrisi tambahan pada serangga (opsional). Cara bagus lainnya untuk menambahkan nutrisi pada makanan leopard gecko adalah untuk mengisi perut serangga. Gunakan formula khusus untuk ini, dan sediakan buah, oat, dan/atau sayuran lain di wadah penyimpanan serangga selama 12-24 jam sebelum diberi makan pada leopard gecko.[8][9] Bila Anda memutuskan untuk melakukan cara ini, lakukan sebagai tambahan dalam menggunakan bubuk debu seperti yang tertulis di langkah di atas, tidak sebagai pengganti.',style: TextStyle(fontSize: 11.0,color: Colors.black87,fontWeight: FontWeight.bold),textAlign: TextAlign.justify,),
                      ),
                    ),
                  ),
                ),
              ),

              //konten 5
              SizedBox(height: 10.0,),
              Container(child: Image.asset("assets/satu.jpeg",)),
              SizedBox(height: 10.0,),
              SingleChildScrollView(
                child: SizedBox(
                  width: double.infinity,
                  child: Container(
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text('Beri leopard gecko makan tiap satu atau dua hari. Leopard gecko berumur di bawah empat bulan perlu makan tiap hari, tetapi leopard gecko yang lebih tua perlu diberi makan dua hari sekali.[10] Secara umum, tiap leopard gecko harus diberi makanan yang cukup dimakan dalam 10-15 menit, atau kurang lebih 4-6 ekor jangkrik.[11] Keluarkan semua serangga dari kandang setelah 15-20 menit, karena serangga bisa malah menyerang dan merusak kulit leopard gecko.\n\nBila leopard gecko Anda pemakan yang lambat, atau terlihat terlalu gemuk, baca bagian masalah kesehatan untuk advice.',style: TextStyle(fontSize: 11.0,color: Colors.black87,fontWeight: FontWeight.bold),textAlign: TextAlign.justify,),
                      ),
                    ),
                  ),
                ),
              ),

              //konten 6
              SizedBox(height: 10.0,),
              Container(child: Image.asset("assets/tangki.jpeg",)),
              SizedBox(height: 10.0,),
              SingleChildScrollView(
                child: SizedBox(
                  width: double.infinity,
                  child: Container(
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text('Bersihkan tangki secara teratur. Keluarkan kotoran, serangga mati, dan kotoran lain dalam tangki leopard gecko tiap hari, untuk menghindari risiko penyakit dan menarik serangga yang berbahaya. Sekitar seminggu sekali, cuci seluruh tangki dengan air hangat dan sabun, bilas seluruh sabun sebelum mengembalikan leopard gecko ke dalam tangkinya. Ganti material yang mulai bau, biasanya tiap enam bulan.\n\nBila Anda menggunakan ubin atau material yang tidak sekali pakai yang serupa, keluarkan saja sebentar, dan bersihkan lantai di bawahnya bila Anda mencium suatu bau.',style: TextStyle(fontSize: 11.0,color: Colors.black87,fontWeight: FontWeight.bold),textAlign: TextAlign.justify,),
                      ),
                    ),
                  ),
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
