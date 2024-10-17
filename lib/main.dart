import 'package:bottom_navigation/ButtomNavigation.dart';
import 'package:bottom_navigation/Navigation/home_screen.dart';
import 'package:flutter/material.dart';
import 'Navigation/cart_screen.dart';
import 'Navigation/categories_screen.dart';
import 'Navigation/orders_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
//
  int _currentIndex = 0;
  final List<Widget> _pages = [
    HomeScreen(),
    CategoriesScreen(),
    CartScreen(),
    OrdersScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      // Update the current index
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // onDrawerChanged: (isOpened) {
      //   if(isOpened){
      //
      //   } else {
      //
      //   }
      // },
      drawer: Drawer(
        child: Column(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              margin: EdgeInsets.zero,
              child: Center(
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.red[200], // Body color
                child: ListView(
                  children: [
                    ListTile(
                      // leading: const Icon(Icons.home),
                      title: const Text('BottomNavigation'),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Buttomnavigation()));
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.settings),
                      title: const Text('Settings'),
                      onTap: () {
                        Navigator.pop(context); // Close the drawer
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.logout),
                      title: const Text('Logout'),
                      onTap: () {
                        Navigator.pop(context); // Close the drawer
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Navigation'),
      ),
      body: _pages[_currentIndex], // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xffEF8120),
        unselectedItemColor: Colors.white,
        backgroundColor: const Color(0xFF194872),
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "asset/icon/categories.png",
              width: 20,
              height: 20,
            ),
            label: ' ',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "asset/icon/order.png",
              width: 20,
              height: 20,
            ),
            label: ' ',
          ),
        ],
        currentIndex: _currentIndex,
        // Set the current index
        onTap: _onItemTapped, // Handle tab taps
      ),
    );
  }
}
