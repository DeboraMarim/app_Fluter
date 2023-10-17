import 'package:flutter/material.dart';

class CadastroScreen extends StatelessWidget {
  const CadastroScreen({super.key});

  static const String imagePath = "assets/image.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            child: Column( 
             children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 55.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Container(
                    width: 376.0,
                    height: 128.0,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 17),
              SizedBox(
                width: 335,
                height: 50,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black, // Cor de fundo
                    borderRadius: BorderRadius.circular(6), // Borda arredondada
                  ),
                  alignment: Alignment.center, // Alinhamento do texto no centro
                  child: const Text(
                    "CADASTRO",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white, // Cor do texto
                      fontSize: 14,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w500,
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
                          border: Border.all(
                              color: const Color(0xff8e9ab9), width: 1),
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
                                  //controller: _emailController,
                                  decoration: const InputDecoration(
                                    hintText: 'Nome',
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
                          border: Border.all(
                              color: const Color(0xff8e9ab9), width: 1),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 19),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: TextFormField(
                                //controller: _passwordController,
                                obscureText: true,
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
                          border: Border.all(
                              color: const Color(0xff8e9ab9), width: 1),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 19),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: TextFormField(
                                //controller: _passwordController,
                                obscureText: true,
                                decoration: const InputDecoration(
                                  hintText: 'E-mail',
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
                          border: Border.all(
                              color: const Color(0xff8e9ab9), width: 1),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 19),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: TextFormField(
                                //controller: _passwordController,
                                obscureText: true,
                                decoration: const InputDecoration(
                                  hintText: 'Telefone',
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
                          border: Border.all(
                              color: const Color(0xff8e9ab9), width: 1),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 19),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: TextFormField(
                                //controller: _passwordController,
                                obscureText: true,
                                decoration: const InputDecoration(
                                  hintText: 'Data de Nascimento',
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
                          border: Border.all(
                              color: const Color(0xff8e9ab9), width: 1),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 19),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: TextFormField(
                                //controller: _passwordController,
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
                          border: Border.all(
                              color: const Color(0xff8e9ab9), width: 1),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 19),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: TextFormField(
                                //controller: _passwordController,
                                obscureText: true,
                                decoration: const InputDecoration(
                                  hintText: 'Confirme sua Senha',
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
                    } else {
                      // Mostrar mensagem de erro ou algo do tipo
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary:
                        Color.fromRGBO(255, 107, 0, 1), // Cor de fundo do botão
                    onPrimary: Colors.black, // Cor do texto do botão
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    minimumSize: const Size(335, 50), // Tamanho mínimo do botão
                  ),
                  child: const Text(
                    "C A D A S T R A R",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
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
