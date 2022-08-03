import 'package:flutter/material.dart';
import 'package:flutter_start/home_page.dart';
import 'package:flutter_start/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  var currentPage = 0;
  List<Widget> pages = const [Home_page(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter'),
      ),
      body: currentPage == 0 ? pages[0] : pages[1],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('fab presed');
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile')
        ],
        onDestinationSelected: (int index) {
          setState(() {
            //refresh screen
            currentPage = index;
          });
          //debugPrint(index.toString());
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
