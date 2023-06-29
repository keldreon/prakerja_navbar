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
      debugShowCheckedModeBanner: false,
      title: 'Prakerja Alterra First Navigation App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(useMaterial3: true),
      home: const MyHomePage(title: 'Alterra Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List<Kontak> kontak = [
      Kontak(
        'Leanne Graham',
        '1-770-736-8031 x56442',
      ),
      Kontak(
        'Ervin Howell',
        '010-692-65-92 x09125',
      ),
      Kontak(
        'Clemantine Bauch',
        '1-463-123-4447',
      ),
      Kontak(
        'Patricia Lebsack',
        '493-170-9623 x156',
      ),
      Kontak(
        'Chelsey Dietrich',
        '(254)954-1289',
      ),
      Kontak(
        'Mrs Dennis Schulist',
        '1-477-935-8478 x6430',
      ),
      Kontak(
        'Kurtis Weissnat',
        '210.067.6132',
      )
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColorDark,
        title: Text(widget.title),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          )
        ],
      ),
      drawer: Drawer(
        backgroundColor: Theme.of(context).primaryColorDark,
        child: ListView(
          addAutomaticKeepAlives: true,
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('Item 3'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 4'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Column(children: [
        for (Kontak k in kontak)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              CircleAvatar(
                backgroundColor: Colors.green,
                child: Text(k.nama[0]),
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(k.nama),
                        Text(
                          k.noTelp,
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ]))
            ]),
          ),
      ]),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
      ]),
    );
  }
}

class Kontak {
  final String nama;
  final String noTelp;

  Kontak(this.nama, this.noTelp);
}
