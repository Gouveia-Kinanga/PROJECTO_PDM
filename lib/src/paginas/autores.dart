import 'package:flutter/material.dart';
import 'package:splash_screen/src/paginas/menu.dart';
import '/src/componentes/custom_text_field.dart';


class Autores extends StatelessWidget {
  const Autores({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('        Sobre Autores'),
      ),
      backgroundColor: Colors.white,
      body:   Column  (
        children: <Widget> [
          Padding(padding: EdgeInsets.symmetric(horizontal: 200, vertical: 5)),
          Image.asset(
            'assets/imagens/ss.PNG',
            width: 350,
            height: 130,
          ),
         Text('Esta é uma aplicacão Mobile desenvolvida'
             '\n     por três estudantes nomeadamente'
              '\n     Gouveia Kinanga ->Dev FronteEnd'
              '\n     Valdemar Valentim ->Dev BackEnd'
              '\n              Pedro Moniz ->BackEnd',
            style: TextStyle(fontWeight:FontWeight.w300,
                fontSize: 18.0, color: Colors.black, fontFamily: 'RobotoMono'),),


        ],
      ),
    );


  }
}
