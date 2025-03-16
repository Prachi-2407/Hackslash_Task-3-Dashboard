
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyDashboard(),
    );
  }
}

class MyDashboard extends StatefulWidget {
  const MyDashboard({Key? key}) : super(key: key);

  @override
  State<MyDashboard> createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.tealAccent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1,
          children: [
            // Card 1
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: InkWell(
                onTap: () {
                  // Navigate to page 1
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Page1()),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.account_circle, size: 50, color: Colors.greenAccent),
                    Text('Profile', style: TextStyle(fontSize: 18, color: Colors.black)),
                  ],
                ),
              ),
            ),
            // Card 2
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: InkWell(
                onTap: () {
                  // Navigate to page 2
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Page2()),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.settings, size: 50, color: Colors.greenAccent),
                    Text('Settings', style: TextStyle(fontSize: 18, color: Colors.black)),
                  ],
                ),
              ),
            ),
            // Card 3
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: InkWell(
                onTap: () {
                  // Navigate to page 3
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Page3()),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.help, size: 50, color: Colors.greenAccent),
                    Text('Help', style: TextStyle(fontSize: 18, color: Colors.black)),
                  ],
                ),
              ),
            ),
            // Card 4
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: InkWell(
                onTap: () {
                  // Navigate to page 4
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Page4()),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.info, size: 50, color: Colors.greenAccent),
                    Text('About', style: TextStyle(fontSize: 18, color: Colors.black)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}





class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
      ),
      body: const Center(
        child: Card(
          elevation: 5,

          shape: RoundedRectangleBorder(
            //borderRadius: BorderRadius.circular(10),
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.account_circle, size: 120, color: Colors.grey),
              Text(' Name-XYZ\n Phone no.: 234555\n Address- Cannaught Palace,Delhi\n Linkdn-XYZ12@linkd.in\n instagram-gamer123', style: TextStyle(fontSize: 18, color: Colors.black,backgroundColor:Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
      ),
      body: const Center(
        child: Card(
          elevation: 5,

          shape: RoundedRectangleBorder(
            //borderRadius: BorderRadius.circular(10),
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.settings, size: 120, color: Colors.grey),
              Text(' Settings section helps you to change\n your Profile section settings.', style: TextStyle(fontSize: 18, color: Colors.black,backgroundColor:Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 3'),
      ),
      body: const Center(
        child: Card(
          elevation: 5,

          shape: RoundedRectangleBorder(
            //borderRadius: BorderRadius.circular(10),
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.help, size: 120, color: Colors.grey),
              Text('Address your queries in help section', style: TextStyle(fontSize: 18, color: Colors.black,backgroundColor:Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 4'),
      ),
      body: const Center(
        child: Card(
          elevation: 5,


          shape: RoundedRectangleBorder(
            //borderRadius: BorderRadius.circular(10),
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.info, size: 120, color: Colors.grey),
              Text('   * Dashboard was created by Prachi \n   *Version 2.5 \n   *Copyright 2025 DashPro Inc. All rights reserved.\n   *For more information or to provide feedback, please email us at mailto:support@Dashpro.comm', style: TextStyle(fontSize: 18, color: Colors.black,backgroundColor:Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }
}


