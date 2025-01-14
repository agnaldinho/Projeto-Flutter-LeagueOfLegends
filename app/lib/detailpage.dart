import 'package:flutter/material.dart';

import 'constants.dart';
import 'widgets.dart';

class DetailPage extends StatelessWidget {
  final int index;

  DetailPage({Key key, this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              height: _height * 0.4 + 30,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(images[index]), fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              height: _height * 0.6,
              padding: const EdgeInsets.only(top: 16.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16.0),
                      topLeft: Radius.circular(16.0))),
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Gnar,',
                                style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              'O Pré-Histórico',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          ParameterWidget(),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              'No idioma português, a alcunha de Gnar teve de ser alterada com relação ao resto do mundo. Para nós, seu nome é ‘’Gnar, o Pré-Histórico’’, mas o nome original é ‘’Gnar, the Missing Link’’. A tradução adequada para Missing Link seria algo como Elo perdido, ou seja, se a tradução fosse feita ao pé da letra, teríamos Gnar, o Elo Perdido. Para evitar piadas de mal gosto nas filas ranqueadas envolvendo o elo do seu coleguinha de equipe, a Riot decidiu alterar essa tradução, que convenhamos, era no mínimo engraçada.',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  BottomContainer()
                ],
              ),
            ),
          ),
          Positioned(
            top: 30,
            left: 8.0,
            child: InkWell(
              child: RoundedButton(icon: Icons.arrow_back),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
