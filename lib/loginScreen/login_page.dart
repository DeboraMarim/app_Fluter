// ignore_for_file: deprecated_member_use

import 'package:aptiv_app/cadastroScreen/cadastro_page.dart';
import 'package:flutter/material.dart';
import 'package:aptiv_app/menuScreen/menu_page.dart';
import 'login_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginBloc bloc = LoginBloc();
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(height: 17),
        const Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 19),
            child: Text(
              "Login",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: "Inter",
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        const SizedBox(height: 17),
        SizedBox(
          width: 335,
          height: 50,
          child: SizedBox(
            width: 335,
            height: 50,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 335,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border:
                        Border.all(color: const Color(0xff8e9ab9), width: 1),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 19),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: TextFormField(
                            controller: _emailController,
                            decoration: const InputDecoration(
                              hintText: 'Registro',
                              hintStyle: TextStyle(
                                color: Color(0xff8e9ab9),
                                fontSize: 14,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 17),
        SizedBox(
          width: 335,
          height: 50,
          child: SizedBox(
            width: 335,
            height: 50,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 335,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border:
                        Border.all(color: const Color(0xff8e9ab9), width: 1),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 19),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: 'Senha',
                            hintStyle: TextStyle(
                              color: Color(0xff8e9ab9),
                              fontSize: 14,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 17),
        SizedBox(
          width: 335,
          height: 50,
          child: ElevatedButton(
            onPressed: () async {
              //var result = await bloc.login(_emailController.text, _passwordController.text); // Fazer login
              var result = 1;
              // ignore: unnecessary_null_comparison
              if (result != null) {
                // Você precisa verificar o resultado real do login aqui
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const MenuScreen()), // Navega para SecondScreen
                );
              } else {
                // Mostrar mensagem de erro ou algo do tipo
              }
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.black, // Cor de fundo do botão
              onPrimary: Colors.white, // Cor do texto do botão
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              minimumSize: const Size(335, 50), // Tamanho mínimo do botão
            ),
            child: const Text(
              "E N T R A R",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontFamily: "Inter",
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        const SizedBox(
          width: 316,
          height: 40,
          child: Text(
            "Esqueci minha senha",
            style: TextStyle(
              color: Color(0xffa3a3a3),
              fontSize: 15,
              fontFamily: "Inter",
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Ainda não tem uma conta?",
              style: TextStyle(
                color: Color(0xffa3a3a3),
                fontSize: 15,
                fontFamily: "Inter",
                fontWeight: FontWeight.w500,
              ),
            ),
            TextButton(
              child: const Text(
                'Inscreva-se',
                style: TextStyle(
                  color: Color.fromRGBO(255, 107, 0, 1),
                  fontSize: 15,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const CadastroScreen()), // Navega para BeneficiosPage
                );
              },
            )
          ],
        ),
      ],
    );
  }
}
