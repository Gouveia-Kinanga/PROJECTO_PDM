import 'dart:async';
import 'package:flutter/material.dart';
import 'src/paginas/login.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gerir Tarefas',
      theme: ThemeData(
      //  primarySwatch: Colors.orange,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();

}
class _MyHomePageState extends State<MyHomePage> {
  @override

  void initState() {
    super.initState();
    Timer(Duration(seconds: 7),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                    Login()
            )
        )

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Image.asset(
              'assets/imagens/bgd.png',


            ),
            Padding(padding:EdgeInsets.only(bottom: 50.0) ),
            Text('\n\nCarregando...',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),),

            SizedBox(height: 5.0,),
            CircularProgressIndicator(
              color: Colors.blue,
              strokeWidth: 8.0,

            ),
          ],
        ),



      ),
    );
   /* return Container(
        color: Colors.white,

        child: Center(

          child: CircularProgressIndicator(
            color: Colors.blue,

          ),
        )

    );*/
  }
}
