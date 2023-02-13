import 'package:flutter/material.dart';
import 'package:splash_screen/src/paginas/menu.dart';
import '/src/componentes/custom_text_field.dart';


class Sobre_app extends StatelessWidget {
  const Sobre_app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('        Sobre a Aplicação'),
      ),
      backgroundColor: Colors.white,
      body:   Column  (
        children: <Widget> [
          Padding(padding: EdgeInsets.symmetric(horizontal: 200, vertical: 5)),
          Image.asset(
            'assets/imagens/bgd.png',
            width: 350,
            height: 130,
          ),
          Text('         Esta é uma aplicacão Mobile para '
              '\n          projecto de exame da cadeira de '
              '\nPDM- Programação de Dispositivos Moveis'
              '\n    do 4º ano a de engenharia informática'
              '\n          na faculdade de engenharia da '
              '\n          universidade católica de angola'
              '\n        orientado pelo Eng. Ivandro Sousa',
            style: TextStyle(fontWeight:FontWeight.w300,
                fontSize: 18.0, color: Colors.black, fontFamily: 'RobotoMono-Bold'),),


        ],
      ),
    );


  }
}
