import 'package:flutter/material.dart';
import 'package:manga_cat/components/UploadManga.dart';
import 'package:manga_cat/widgets/MangaCard.dart';
import 'package:manga_cat/widgets/NavDrawer.dart';

class MangaCatalog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Chat',
          ),
        ],
      ),
      drawer: NavDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        elevation: 0,
        /*
        leading: BackButton(
          color: Colors.black,
        ),
        */
      ),
      body: Container(
        color: Colors.indigo[300],
        child: ListView(
          children: <Widget>[
            MangaCard(
              UploadManga('assets/images/blackclover.png', 'Black Clover 27',
                  'Category: Shōnen'),
            ),
            MangaCard(
              UploadManga('assets/images/fullmetal.jpg',
                  'Fullmetal Alchemist 01', 'Category: Shōnen'),
            ),
            MangaCard(
              UploadManga('assets/images/eva1.jpg',
                  'Neon Genesis Evangelion 01', 'Category: Shōnen, Seinen'),
            ),
            MangaCard(
              UploadManga('assets/images/berserk.jpg', 'Berserk 31',
                  'Category: Seinen'),
            ),
          ],
        ),
      ),
    );
  }
}
