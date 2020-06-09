import 'package:flutter/material.dart';
import 'package:gecko/ThirdScreen.dart';
import 'package:gecko/main.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int currentIndex;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentIndex = 1;
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
                child: SizedBox(width: double.infinity,child: Container(child: Text("Menyusun Tempat Tinggal",style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),textAlign: TextAlign.left,))),
              ),
              Container(child: Image.asset("assets/susun.jpeg",)),
              SizedBox(height: 10.0,),
              SingleChildScrollView(
                child: SizedBox(
                  width: double.infinity,
                  child: Container(
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text('Beli tangki berukuran 40-80 liter dengan kasa penutup. Beli wadah kaca atau plastik di toko binatang peliharaan untuk memelihara leopard gecko Anda, termasuk kasa penutup yang bisa dikencangkan. Anda bisa menemukannya berupa akuarium, vivarium, atau terarium. Bila Anda sudah memiliki rumah untuk leopard gecko Anda, baca bagian ini untuk memastikan rumah tersebut layak bagi leopard gecko.\n\nSebuah tangki berukuran 80 liter bisa menjadi rumah yang nyaman untuk hingga tiga ekor leopard gecko. Tidak direkomendasikan untuk memelihara lebih dari satu jantan dalam satu tangki karena pejantan sering berkelahi satu sama lain.',style: TextStyle(fontSize: 11.0,color: Colors.black87,fontWeight: FontWeight.bold),textAlign: TextAlign.justify,),
                      ),
                    ),
                  ),
                ),
              ),

              //konten 2
              SizedBox(height: 10.0,),
              Container(child: Image.asset("assets/lapisi.jpeg",)),
              SizedBox(height: 10.0,),
              SingleChildScrollView(
                child: SizedBox(
                  width: double.infinity,
                  child: Container(
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text('Lapisi wadah menggunakan material padat, bukan partikel. Lapisi dasar wadah dengan lapisan khusus "ubin reptil", ubin batu datar, atau astroturf. Anda bisa menggunakan tisu tebal atau koran saja, tetapi Anda harus siap untuk menggantinya secara teratur saat sudah kotor atau rusak. Jangan pernah menggunakan pasir, serutan kayu, atau material lain yang menimbulkan debu atau partikel, karena ini bisa menyebabkan masalah kesehatan yang serius bila dimakan gecko.\n\nBila menggunakan batu atau material berat lainnya, pertimbangkan untuk meletakkan beberapa lapis kertas tisu di antara lantai dan batu untuk mengurangi kemungkinan pecah atau retak.\n\nJangan pernah menggunakan serutan kayu atau kayu resin, karena bisa meracuni leopard gecko.',style: TextStyle(fontSize: 11.0,color: Colors.black87,fontWeight: FontWeight.bold),textAlign: TextAlign.justify,),
                      ),
                    ),
                  ),
                ),
              ),

              //konten 3
              SizedBox(height: 10.0,),
              Container(child: Image.asset("assets/panas.jpeg",)),
              SizedBox(height: 10.0,),
              SingleChildScrollView(
                child: SizedBox(
                  width: double.infinity,
                  child: Container(
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text('Panaskan tangki. Gunakan bantalan pemanas khusus untuk tangki reptil atau "pemanas di bawah tangki," untuk menghangatkan tangki hingga bersuhu 23,3–26,7 ºC. Gunakan termometer untuk tiap sisi sangkar untuk menjaga temperatur. Di malam hari temperatur seharusnya tidak lebih rendah dari 21 ºC.',style: TextStyle(fontSize: 11.0,color: Colors.black87,fontWeight: FontWeight.bold),textAlign: TextAlign.justify,),
                      ),
                    ),
                  ),
                ),
              ),

              //konten 4
              SizedBox(height: 10.0,),
              Container(child: Image.asset("assets/hangat.jpeg",)),
              SizedBox(height: 10.0,),
              SingleChildScrollView(
                child: SizedBox(
                  width: double.infinity,
                  child: Container(
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text('Buat tempat berjemur yang bahkan lebih hangat lagi. Gunkan lampu infra merah atau panas merah untuk membuat satu sisi tangki bersuhu 29,4–32,2 ºC. Leopard gecko memerlukan tempat panas ini untuk mencerna makanannya dengan benar, dan untuk mengatur temperatur dengan berpindah-pindah dari area yang lebih panas atau dingin.\n\nJangan gunakan lampu pemanas putih, karena akan mengganggu jadwal tidur leopard gecko.\n\nJangan biarkan temperatur lebih tinggi dari 34,4 ºC',style: TextStyle(fontSize: 11.0,color: Colors.black87,fontWeight: FontWeight.bold),textAlign: TextAlign.justify,),
                      ),
                    ),
                  ),
                ),
              ),

              //konten 5
              SizedBox(height: 10.0,),
              Container(child: Image.asset("assets/siklus.jpeg",)),
              SizedBox(height: 10.0,),
              SingleChildScrollView(
                child: SizedBox(
                  width: double.infinity,
                  child: Container(
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text('Sediakan siklus lampu siang/malam. Leopard gecko itu crepuscular, yang berarti dia paling aktif saat fajar atau senja, tetapi dia masih bisa beradaptasi untuk tinggal di area dengan sinar matahari 14 jam sehari atau 12 jam selama musim dingin. Cara termudah untuk menghasilkan ini aadalah melalui lampu di atas kandang dengan pengatur waktu otomatis, tersedia di toko binatang peliharaan, tetapi Anda juga bisa mematikan dan menghidupkan lampu secara manual. Tidak seperti banyak reptile, leopard gecko lebih memilih lampu biasa dibanding lampu UV\n\nGunakan lampu yang watt-nya rendah atau efisien pemakaian energinya untuk menghindari kandang menjadi terlalu panas.',style: TextStyle(fontSize: 11.0,color: Colors.black87,fontWeight: FontWeight.bold),textAlign: TextAlign.justify,),
                      ),
                    ),
                  ),
                ),
              ),

              //konten 6
              SizedBox(height: 10.0,),
              Container(child: Image.asset("assets/naung.jpeg",)),
              SizedBox(height: 10.0,),
              SingleChildScrollView(
                child: SizedBox(
                  width: double.infinity,
                  child: Container(
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text('Tambahkan tiga tempat bernaung ke dalam kandang. Belilah gua batu, atau tempat bernaung reptil lainnya dari toko binatang peliharaan, yang cukup besar bagi kadal untuk bersembunyi di bawahnya. Alternatifnya, buat sendiri tempat bernaung dari pipa PVC atau material lain yang diamplas, tetapi hindari objek yang telah berada di luar, dan objek yang berpermukaan tajam. Letakkan tempat bernaung ini di tiga tempat berbeda, untuk memenuhi keperluan leopard gecko\n\nLetakkan satu tempat bernaung di sisi tangki yang lebih sejuk, dan letakkan tisu tebal lembap atau material lembap lain di bawahnya. ini disebut "persembunyian lembap/humid hide" dan lantainya perlu dilembapkan secara teratur untuk membiarkan gecko menyesuaikan kelembapan kulitnya.\n\nLetakkan tempat bernaung kedua di daerah tangki yang lebih sejuk, tetapi biarkan kering.\n\nLetakkan tempat bernaung ketiga di bagian tangki yang lebih hangat, jaga tetap kering.',style: TextStyle(fontSize: 11.0,color: Colors.black87,fontWeight: FontWeight.bold),textAlign: TextAlign.justify,),
                      ),
                    ),
                  ),
                ),
              ),

              //konten 7
              SizedBox(height: 10.0,),
              Container(child: Image.asset("assets/dapat.jpeg",)),
              SizedBox(height: 10.0,),
              SingleChildScrollView(
                child: SizedBox(
                  width: double.infinity,
                  child: Container(
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text('Dapatkan leopard gecko Anda dari tempat yang terpercaya. Temukan leopard gecko Anda di pengembang biak bersertifikat bila dimungkinkan, atau di toko binatang peliharaan dengan binatang-binatang yang sehat dan terawat baik. Pilih binatang yang matanya terang, bersih, dan ekor yang rata. Jari kaki yag hilang dan ada material keras di sekitar mulutnya adalah tanda-tanda bahwa leopard gecko sakit.\n\nBila Anda memiliki leopard gecko yang terlihat sakit, jangan biarkan berkembang biak. Leopard gecko bisa jadi melahirkan keturunan yang tidak sehat.',style: TextStyle(fontSize: 11.0,color: Colors.black87,fontWeight: FontWeight.bold),textAlign: TextAlign.justify,),
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
