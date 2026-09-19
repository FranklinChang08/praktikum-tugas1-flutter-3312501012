import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(
        // Menambahkan 2 variable nama dan nim untuk dapat disimpan ke variable 
        title: 'Aplikasi Pertama',
        nama: 'Franklin Sebastian Felix',
        nim: '3312501012',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,

    // Berfungsi sebagai validasi supaya class mengirim variable tersebut
    required this.title,
    required this.nama,
    required this.nim,
  });

  // Menambahkan title aplikasi
  final String title;
  // Menambahkan nama mahasiswa
  final String nama;
  // Menambahkan nim mahasiswa
  final String nim;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // Function yang berfungsi untuk menambah counter
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // Function yang berfungsi untuk mengurangi counter
  void _decrimentCounter() {
    setState(() {
      {
        _counter--;
      }
    });
  }

  // Function yang berfungsi untuk mereset counter
  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.title, style: TextStyle(fontWeight: FontWeight.w900)),
            Text(
              '${widget.nama} - ${widget.nim}',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            // Container yang berfungsi sebagai pemmbungkus dari counter
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.3),
                border: Border.all(color: Colors.blue, width: 2.0),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                    offset: Offset(5, 5),
                  ),
                ],
              ),
              // Child dari container yang dimana child berisi teks yang ditampilkan berupa nilai counter
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Nilai Counter'),
                    Text(
                      '$_counter',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50),

            // Row yang berfungsi sebagai layout secara horizontal untuk setiap content didalamnya
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 48,
              children: [
                // Widget tombol yang memiliki garis luar dengan fungsi menambah nilai counter
                OutlinedButton.icon(
                  onPressed: _incrementCounter,
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.blue.withOpacity(0.8),
                    foregroundColor: Colors.white,
                    side: BorderSide(color: Colors.blue, width: 2),
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  icon: Icon(Icons.add),
                  label: const Text(
                    'Tambah',
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                ),
                // Widget tombol yang memiliki garis luar dengan fungsi mengurangi nilai counter
                OutlinedButton.icon(
                  onPressed: _decrimentCounter,
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.red.withOpacity(0.8),
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    side: BorderSide(color: Colors.red, width: 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  icon: Icon(Icons.remove),
                  label: const Text('Kurang'),
                ),
              ],
            ),
            // Widget tombol yang memiliki garis luar dengan fungsi mereset nilai counter
            OutlinedButton.icon(
              onPressed: _resetCounter,
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.grey.withOpacity(0.8),
                foregroundColor: Colors.white,
                side: BorderSide(color: Colors.grey, width: 2),
                padding: EdgeInsets.symmetric(horizontal: 30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              icon: Icon(Icons.restore),
              label: const Text(
                'Reset',
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
            ),

            SizedBox(height: 20),

            // Container yang berfungsi sebagai pembungkus content
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 125,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black12.withOpacity(0.1)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                    offset: Offset(5, 5),
                  ),
                ],
              ),

              // Child yang menggunakan widget column dimana menyusun content secara vertikal
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Widget teks untuk menampilkan nama
                  Text(
                    'Nama: ${widget.nama}',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  // Widget teks untuk menampilkan nim
                  Text(
                    'NIM: ${widget.nim}',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Text('Ditampilkan langsung dari dart'),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
