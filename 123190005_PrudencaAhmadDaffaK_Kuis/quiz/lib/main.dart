import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }

  Widget build_home() {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.home),
          title: Text("Praktikum Mobile - B"),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.call,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.call,
                  color: Colors.white,
                )),
          ],
        ),
        body:
        // Center(
        //   child: Row(
        //     children: [
        //       Text("Ini Widget Text"),
        //       TextButton(onPressed: () {}, child: Text("Text Button")),
        //       OutlinedButton(onPressed: () {}, child: Text("Outlined Button")),
        //       ElevatedButton(onPressed: () {}, child: Text("Contained Button")),
        //       // Image.asset('images/logo.png'),
        //       // Image.network('https://avatars.githubusercontent.com/u/49654730?v=4')
        //       Padding(
        //         padding: EdgeInsets.all(8),
        //         child: TextField(
        //           decoration: InputDecoration(
        //             border: OutlineInputBorder(),
        //             hintText: "Masukkan Nama"
        //           ),
        //         ),
        //       ),
        //
        //     ],
        //   ),
        // )
        // Column(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: [
        //     FlutterLogo(),
        //     FlutterLogo(),
        //   ],
        // )
        //     ListView.separated(
        //   itemBuilder: (BuildContext context, int index) {
        //     return Card(
        //       child: Padding(
        //         padding: const EdgeInsets.all(15.0),
        //         child: Text('Index $index', style: TextStyle(fontSize: 30)),
        //       ),
        //     );
        //   },
        //   itemCount: 6,
        //   separatorBuilder: (BuildContext context, int index) {
        //     if(index % 2 == 0){
        //       return Container(
        //         color: Colors.greenAccent,
        //         child: Text('Separator', style: TextStyle(fontSize: 20)),
        //       );
        //     } else {
        //       return Container(
        //         color: Colors.amber,
        //         child: Text('Separator', style: TextStyle(fontSize: 20)),
        //       );
        //     }
        //   },
        // )
        // GridView.builder(
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        //   itemBuilder: (BuildContext context, int index) { return FlutterLogo(); },
        //   itemCount: 6,
        // )
        // IndexedStack(
        //   index: 2,
        //   children: <Widget>[
        //     Container(
        //       color: Colors.green,
        //     ),
        //     Container(
        //       color: Colors.red,
        //       height: 400.0,
        //       width: 300.0,
        //     ),
        //     Container(
        //       color: Colors.deepPurple,
        //       height: 200.0,
        //       width: 200.0,
        //     ),
        //   ],
        // )
        SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                color: const Color(0xffeeee00),
                height: 400.0,
                alignment: Alignment.center,
                child: const Text('Fixed Height Content'),
              ),
              Container(
                color: const Color(0xff008000),
                height: 450.0,
                alignment: Alignment.center,
                child: const Text('Fixed Height Content'),
              ),
            ],
          ),
        ));
  }
}
