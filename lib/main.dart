import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Todo App',
        theme: ThemeData(
          primarySwatch: white,
        ),
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.system,
        home: HomePage());
  }
}

const MaterialColor white = const MaterialColor(
  0xFFFFFFFF,
  const <int, Color>{
    50: const Color(0xFFFFFFFF),
    100: const Color(0xFFFFFFFF),
    200: const Color(0xFFFFFFFF),
    300: const Color(0xFFFFFFFF),
    400: const Color(0xFFFFFFFF),
    500: const Color(0xFFFFFFFF),
    600: const Color(0xFFFFFFFF),
    700: const Color(0xFFFFFFFF),
    800: const Color(0xFFFFFFFF),
    900: const Color(0xFFFFFFFF),
  },
);

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.lightBlue,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: CircleAvatar(
                backgroundColor: Colors.red,
                child: Text(
                  'P',
                  style: TextStyle(fontSize: 70, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Center(
              child: Text('Paditus Bunny',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700)),
            ),
            ListTile(
              leading: Icon(Icons.pie_chart),
              title: Text('Analysis'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.bookmark),
              title: Text('Saved'),
            )
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          Row(
            children: const [
              IconButton(onPressed: null, icon: Icon(Icons.search)),
              IconButton(onPressed: null, icon: Icon(Icons.alarm))
            ],
          ),
        ],
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          Text(
            "What's Up, Paditus",
            style: TextStyle(fontSize: 33, fontWeight: FontWeight.w700),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Days",
                style: TextStyle(fontSize: 22),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 180,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(spreadRadius: 0.000000001, blurRadius: 6)
                      ],
                      borderRadius: BorderRadius.circular(20),
                      // color: Colors.lightBlue,
                      gradient:
                          LinearGradient(colors: [Colors.blue, Colors.purple])),
                  width: 170,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Today - 19th DEC 2021",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("4 Tasks",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w700)),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(spreadRadius: 0.000000001, blurRadius: 6)
                      ],
                      borderRadius: BorderRadius.circular(20),
                      // color: Colors.lightBlue,
                      gradient:
                          LinearGradient(colors: [Colors.blue, Colors.purple])),
                  width: 170,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Tomorrow - 20th DEC 2021",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("7 Tasks",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w700)),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(spreadRadius: 0.000000001, blurRadius: 6)
                      ],
                      borderRadius: BorderRadius.circular(20),
                      // color: Colors.lightBlue,
                      gradient:
                          LinearGradient(colors: [Colors.blue, Colors.purple])),
                  width: 170,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Tuesday - 21th DEC 2021",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("2 Tasks",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w700)),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Text(
              "Today's Agenda",
              style: TextStyle(fontWeight: FontWeight.w200, fontSize: 22),
            ),
          ),
          Card(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: ListTile(
              leading: Icon(Icons.radio_button_checked),
              title: Text("Morning Exercise"),
              trailing: Text("5:00 am"),
            ),
          ),
          Card(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: ListTile(
              leading: Icon(Icons.radio_button_checked),
              title: Text("Staff Meeting"),
              trailing: Text("8:30 am"),
            ),
          ),
          Card(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: ListTile(
              leading: Icon(Icons.radio_button_off),
              title: Text("Dentist Appointment"),
              trailing: Text("12:30 pm"),
            ),
          ),
          Card(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: ListTile(
              leading: Icon(Icons.radio_button_off),
              title: Text("P.T.A. Meeting"),
              trailing: Text("5:30 am"),
            ),
          ),
        ],
      ),
    );
  }
}
