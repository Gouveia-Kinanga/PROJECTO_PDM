import 'package:flutter/material.dart';
import '/src/componentes/nav_drawer.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';


class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar:AppBar(
          title: new Text('Gestor de Actividades')
      ),
      body: new FooterView(
        children:<Widget>[

        ],
        footer: new Footer(
          child:  Text('Copyright ©2023, All Rights Reserved.\n          Powered by UCAN-PDM',
            style: TextStyle(fontWeight:FontWeight.w300,
                fontSize: 12.0, color: Color(0xFF162A49)),),

          padding: EdgeInsets.all(10.0),
        ),
        flex: 1, //default flex is 2
      ),
    );
  }





}
