import 'package:flutter/material.dart';
import 'MangaCatalog.dart';

class TelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Image.asset(
                'assets/images/logo.png',
                height: 220,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => MangaCatalog(),
                          ),
                        );
                      },
                      child: Text(
                        'Entrar',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 32.0,
                            fontFamily: 'IndieFlower'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
