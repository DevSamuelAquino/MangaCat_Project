import 'package:flutter/material.dart';
import 'package:manga_cat/components/UploadManga.dart';

class MangaCard extends StatefulWidget {
  final UploadManga _uploadManga;

  MangaCard(this._uploadManga);

  @override
  _MangaCardState createState() => _MangaCardState();
}

class _MangaCardState extends State<MangaCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4.0, 12.0, 4.0, 12.0),
      child: Container(
        child: Card(
          child: Container(
            color: Colors.indigo[100],
            child: Row(
              children: <Widget>[
                Container(
                  child: Image.asset(
                    widget._uploadManga.imagem.toString(),
                    height: 210,
                    width: 150,
                    fit: BoxFit.fill,
                  ),
                ),
                Expanded(
                  child: Wrap(
                    children: [
                      Center(
                        child: Text(
                          widget._uploadManga.titulo.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 24.0),
                        ),
                      ),
                      Center(
                        child: Text(
                          widget._uploadManga.description.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
