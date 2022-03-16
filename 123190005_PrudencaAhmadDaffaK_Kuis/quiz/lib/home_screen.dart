import 'home_page.dart';
import 'album_list.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spo - Tifuy"),
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
                  Image.network(album.imageUrls),
                  Text(album.albumName)
                ],
              ),
            ),
          );
        },
        itemCount: topAlbumList.length,),
    );
  }
}
