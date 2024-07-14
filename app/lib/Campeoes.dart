import 'package:flutter/material.dart';
import 'widgets.dart';

import 'constants.dart';

class campeao extends StatelessWidget {
  const campeao({Key key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WaterFall App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Sans',
        primarySwatch: Colors.blue,
        primaryColor: Color(0xff001D25),
        accentColor: Color(0xff196B81),
      ),
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/Homelol.png'), fit: BoxFit.none),
              ),
            ),
            _mainBody()
          ],
        ),
      ),
    );
  }

  Widget _mainBody() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black45,
      padding: const EdgeInsets.only(top: 80, left: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Seja Bem-Vindo.',
            style: TextStyle(
                fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            'Agnaldinhoo',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                'Aqui voce vai encontrar tudo relacionado a league of legends',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
          WaterFallList(),
        ],
      ),
    );
  }
}