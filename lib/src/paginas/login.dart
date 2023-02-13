import 'package:flutter/material.dart';
import 'package:splash_screen/src/paginas/menu.dart';
import '/src/componentes/custom_text_field.dart';
import 'package:splash_screen/src/paginas/criar_usuario.dart';


class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,


      body:  Column(
          children:<Widget> [
            Padding(padding: EdgeInsets.all(15)),
            Image.asset(
              'assets/imagens/login.png',
                width: 300,
                height: 150,
            ),

             Container(

               padding: const EdgeInsets.symmetric(
                 horizontal: 2,
                 vertical: 2,

               ),

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
                //BOTÃO DE ENTRAR
                SizedBox(
                  height: 40,
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
                      child: const Text("ENTRAR", style: TextStyle(
                          fontSize: 18
                      ),
                      )
                  ),
                ),
                //ESQUECEU A SENHA
               TextButton(onPressed: (){}, child: const Text("Esqueceu a senha?",
                  style: TextStyle(color: Colors.red
                  ),
                ),
                ),

                //DIVISOR
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey.withAlpha(90),
                          thickness: 2,
                        ),
                      ),
                      const Text("   Ou   "),
                      Expanded(
                        child: Divider(
                          color: Colors.grey.withAlpha(90),
                          thickness: 2,
                        ),
                      ),
                    ],
                  ),

                ),

                //BOTÃO DE CRIAR NOVO USUÁRIO
                SizedBox(
                  height: 40,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape:RoundedRectangleBorder(

                          borderRadius: BorderRadius.circular(16)
                      ),
                      side: const BorderSide(
                        width: 2,
                        color: Colors.blue,
                      ),

                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CriarUser()),
                      );
                    },
                    child: const Text("Registra-se",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),

                  ),
                ),

              ],

      ),
    );


  }
}
