import 'package:flutter/material.dart';
import 'package:splash_screen/src/paginas/menu.dart';
import '/src/componentes/custom_text_field.dart';


class CriarActividade extends StatelessWidget {
  const CriarActividade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('CADASTRAR TAREFAS'),
      ),
      backgroundColor: Colors.white,
      body:  Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.symmetric(horizontal: 100, vertical: 2)),
          Image.asset(
            'assets/imagens/121.PNG',
            width: 250,
            height: 96,
          ),

         /* Container( height: 200, width: 400,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 2,
            ),
    ),*/

                //NOME DA TAREFA
                const CustomTextField(
                  icon: Icons.book,
                  label: 'Nome da Tarefa',
                ),
                //TIPO DE ACTIVIDADE
                const CustomTextField(
                  icon: Icons.bar_chart_sharp,
                  label: 'Tipo de Tarefa',
                ),
                //DAta inicio
                const CustomTextField(
                  icon: Icons.calendar_month,
                  label: 'Data de Início',
                ),
                //Data Termino
                const CustomTextField(
                  icon: Icons.calendar_month,
                  label: 'Data de Término',
                ),

                //BOTÃO SUBMIT-CADASTRAR
                SizedBox(


                  height: 45,
                  child:  ElevatedButton(

                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(

                              borderRadius: BorderRadius.circular(16)
                          )
                      ),

                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Menu()),
                        );

                      },

                      child: const Text("CADASTRAR", style: TextStyle(
                          fontSize: 18

                      ),

                      )
                  ),
                ),
        ],
      ),
    );


  }
}
