import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '123190005 Flutter Prak TPM Tugas 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login Screen'),
        ),
        body: Padding(
          padding: EdgeInsets.all(32),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 96),
                child: FlutterLogo(
                  size: 50,
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(28, 24, 28, 24),
                child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(24))),
                        hintText: 'Masukkan Nama')),
              ),
              Container(
                padding: EdgeInsets.only(left: 28, right: 28, bottom: 32),
                child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(24))),
                        hintText: 'Masukkan Password')),
              ),
              Container(
                padding: EdgeInsets.only(left: 28, right: 28),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    minimumSize: const Size.fromHeight(50), // NEW
                  ),
                  onPressed: () {}, // Respon ketika button ditekan
                  child: Text("Log In"),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.grey,
                    ),
                    onPressed: () {},
                    child: Text('Forgot password?'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
