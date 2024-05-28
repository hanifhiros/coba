import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 3; // Set initial tab to profile
  final List<Widget> screens = [
    const HPage(),
    const Aktifitas(),
    const Notif(),
    const Akun()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const Akun(); // Set initial screen to profile

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: bucket, child: currentScreen),
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFFD90429),
        child: const Icon(Icons.camera_alt),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Lapor()));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xFF2B2D42),
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildNavItem(Icons.home, "Beranda", 0),
                  buildNavItem(Icons.newspaper, "Aktivitas", 1),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildNavItem(Icons.notifications, "Pesan", 2),
                  buildNavItem(Icons.person, "Profil", 3),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildNavItem(IconData icon, String label, int index) {
    return MaterialButton(
      minWidth: 40,
      onPressed: () {
        setState(() {
          currentScreen = screens[index];
          currentTab = index;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: currentTab == index ? const Color(0xFFD90429) : Colors.white,
          ),
          Text(
            label,
            style: TextStyle(
              color:
                  currentTab == index ? const Color(0xFFD90429) : Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

// Definisikan kelas-kelas yang hilang
class HPage extends StatelessWidget {
  const HPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Home Page'),
    );
  }
}

class Aktifitas extends StatelessWidget {
  const Aktifitas({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Aktifitas Page'),
    );
  }
}

class Notif extends StatelessWidget {
  const Notif({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Notif Page'),
    );
  }
}

class Akun extends StatelessWidget {
  const Akun({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Saya'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Stack(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.red,
                  child: Icon(Icons.person, size: 50, color: Colors.white),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: const Color(0xFF2B2D42),
                    radius: 20,
                    child:
                        Icon(Icons.camera_alt, color: Colors.white, size: 20),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Username',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: 'Muhammad Hanif Suryana',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.location_on),
                hintText: 'Alamat',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone),
                hintText: '0812345678910',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle Ubah action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(vertical: 16),
                minimumSize:
                    Size(double.infinity, 50), // Make button full width
              ),
              child: Text(
                'Ubah',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Lapor extends StatelessWidget {
  const Lapor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lapor Page'),
      ),
      body: Center(
        child: Text('Lapor Page'),
      ),
  );
  }
}