import 'package:flutter/material.dart';

import 'TelaInicial.dart';

class CharactersList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => TelaInicial()));
        },
      ),
    );
  }
}
