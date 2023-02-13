import 'package:flutter/material.dart';
import 'package:splash_screen/src/paginas/autores.dart';
import 'package:splash_screen/src/paginas/criar_actividade.dart';
import 'package:splash_screen/src/paginas/criar_usuario.dart';
import 'package:splash_screen/src/paginas/listar_actividade.dart';
import 'package:splash_screen/src/paginas/listar_usuario.dart';
import 'package:splash_screen/src/paginas/login.dart';
import 'package:splash_screen/src/paginas/sobre_app.dart';


class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(''),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/imagens/02.jpg')
                )
            ),
          ),

          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => {},
          ),
          ExpansionTile(
            title: Text("Usuários"),
            leading: Icon(Icons.person), //add icon
            childrenPadding: EdgeInsets.only(left: 60), //children padding
            children: [
              ListTile(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CriarUser()),
                  );
                },
                title: Text("Criar"),
              ),

              ListTile(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListarUsers()),
                  );
                },
                title: Text("Listar"),

              ),
             /* *//*ListTile(
                title: Text("Eliminar"),
                onTap: () {
                  //action on press
                },*//*
              ),*/
            ],
          ),

            //TAREFAS
          ExpansionTile(
            title: Text("Tarefas"),
            leading: Icon(Icons.border_color), //add icon
            childrenPadding: EdgeInsets.only(left: 60), //children padding
            children: [
              ListTile(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CriarActividade()),
                  );
                },
                title: Text("Criar"),

              ),

              ListTile(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListarActividades()),
                  );
                },
                title: Text("Listar"),

              ),
             /* ListTile(
                title: Text("Eliminar"),
                onTap: () {
                  //action on press
                },
              ),*/
            ],
          ),

          ExpansionTile(
            title: Text("Definições"),
            leading: Icon(Icons.settings), //add icon
            childrenPadding: EdgeInsets.only(left: 60), //children padding
            children: [
              ListTile(
                title: Text("Configurações"),
                onTap: () {
                  //action on press
                },
              ),

              ListTile(
                title: Text("Idioma"),
                onTap: () {
                  //action on press
                },
              ),


            ],
          ),

          ExpansionTile(
            title: Text("Sobre"),
            leading: Icon(Icons.help_center_outlined), //add icon
            childrenPadding: EdgeInsets.only(left: 60), //children padding
            children: [
              ListTile(
                title: Text("Sobre app"),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Sobre_app()),
                  );
                },
              ),
              ListTile(
                title: Text("Autores"),
                    onTap: (){
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Autores()),
                    );
              },
              ),

            ],
          ),


          //SAIR
          ListTile(
            onTap: (){
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Login()),
              );
              },
            leading: Icon(Icons.exit_to_app),
            title: Text('Sair'),

          ),

        ],
      ),
    );
  }
}
