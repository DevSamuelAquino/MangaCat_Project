import 'package:flutter/material.dart';
import 'package:manga_cat/components/UploadCharacter.dart';
import 'package:manga_cat/screens/MangaCatalog.dart';
import 'package:manga_cat/widgets/FormCharacters.dart';

class TopCharacters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top Characters'),
        leading: BackButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => MangaCatalog(),
              ),
            );
          },
        ),
      ),
      body: ListView(
        children: [
          Container(
            child: Wrap(
              children: [
                CharacterCard(UploadCharacter('Kaguya', 'KaguyaSama')),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => FormCharacters(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class CharacterCard extends StatefulWidget {
  final UploadCharacter _uploadCharacter;

  CharacterCard(this._uploadCharacter);

  @override
  _CharacterCardState createState() => _CharacterCardState();
}

class _CharacterCardState extends State<CharacterCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          widget._uploadCharacter.nameCharacter.toString(),
        ),
        subtitle: Text(
          widget._uploadCharacter.nameManga.toString(),
        ),
      ),
    );
  }
}
