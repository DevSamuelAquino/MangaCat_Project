import 'package:flutter/material.dart';
import 'package:manga_cat/drawer/TopCharacters.dart';

class FormCharacters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => TopCharacters(),
                ),
              );
            },
            child: Text(
              'FormCharacters',
            ),
          ),
        ],
      ),
    );
  }
}
