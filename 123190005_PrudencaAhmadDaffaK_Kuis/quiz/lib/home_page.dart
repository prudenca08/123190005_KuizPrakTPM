import 'package:flutter/material.dart';
import 'album_list.dart';

class HomePage extends StatefulWidget {
  final String username;

  const HomePage({Key? key, required this.username}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.username}\n"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final TopAlbum album = topAlbumList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HomePage(username: album.albumName);
              }));
            },
            child: Card(
              child: Row(
                children: [
                Text("${widget.username}\n\n\n",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize:20,),),
                  Text( "${album.songs}",
                  textAlign: TextAlign.center,
                      style: TextStyle(fontSize:12,))
                ],
              ),
            ),
          );
        },
        itemCount: topAlbumList.length,),


    );
  }

}
