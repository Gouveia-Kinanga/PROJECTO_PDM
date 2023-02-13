import 'package:flutter/material.dart';
import 'package:splash_screen/src/paginas/menu.dart';
import '/src/componentes/custom_text_field.dart';


class CriarUser extends StatelessWidget {
  const CriarUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('CADASTRAR USUÁRIOS'),
      ),
      backgroundColor: Colors.white,
      body:  Column(
        children: [

          Padding(padding: EdgeInsets.all(5)),
          Image.asset(
            'assets/imagens/ca.PNG',
            width: 200,
            height: 100,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 2,
              vertical: 2,
            ),

          ),


          Container( height: 249, width: 400,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 2,
            ),

            decoration: const BoxDecoration(
              // color: Colors.red,

            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //NOME COMPLETO
                const CustomTextField(
                  icon: Icons.book,
                  label: 'Nome Completo',
                ),

                //EMAIL
                const CustomTextField(
                  icon: Icons.email,
                  label: 'Email',
                ),

                //SENHA
                const  CustomTextField(
                  icon: Icons.lock,
                  label: 'Senha',
                  isSecret: true,
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
          ),
        ],
      ),
    );


  }
}
