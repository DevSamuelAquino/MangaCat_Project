import 'package:flutter/material.dart';
// import 'package:manga_cat/screens/MangaCatalog.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.indigo,
      body: Center(
        child: Column(
          children: [
            Container(
              width: 190.0,
              height: 190.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/gura.png'),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 24.0),
              child: Wrap(
                direction: Axis.horizontal,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          '______________________',
                          style: TextStyle(fontSize: 24.0, color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24.0),
                        child: Text(
                          'Samuel Borges de Aquino',
                          style: TextStyle(fontSize: 24.0, color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24.0),
                        child: Text(
                          'Level: 95 - Manga Expert',
                          style: TextStyle(fontSize: 24.0, color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24.0),
                        child: Text(
                          'Favorite manga: FMAB',
                          style: TextStyle(fontSize: 24.0, color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24.0),
                        child: Text(
                          'Read mangas: 125',
                          style: TextStyle(fontSize: 24.0, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
