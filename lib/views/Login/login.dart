import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:networking/components/button.dart';
import 'package:networking/components/text.dart';
import 'package:networking/views/Home/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: 250,
                  height: 380,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/NetWorking.png'),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 30),
                  child: TextoPersonalizado(
                    texto: 'Nome',
                    icone: Icons.person,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: TextoPersonalizado(
                    texto: 'Senha',
                    icone: Icons.password,
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 50)),
                SizedBox(
                  height: 50,
                  child: Container(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 255, 207, 159),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                      ),
                      child: Text(
                        'Entrar',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 67, 92, 89),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
