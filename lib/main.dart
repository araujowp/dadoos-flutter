import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade700,
        appBar: AppBar(
          title: Text('Dados'),
          backgroundColor: Colors.teal.shade900,
        ),
        body: Dadoos(),
      ),
    ),
  );
}

class Dadoos extends StatefulWidget {
  @override
  _DadosState createState() => _DadosState();
}



class _DadosState extends State<Dadoos> {
  int numeroDadoDireita = 1;
  int numeroDadoEsquerda = 1;

   void trocaNumeros(){
     print('passamos no gera');
     numeroDadoEsquerda = Random().nextInt(6) +1;
     numeroDadoDireita = Random().nextInt(6) +1;
     print(numeroDadoEsquerda);
   }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  trocaNumeros();
                });
              },
              child: Image.asset('imagens/dado$numeroDadoEsquerda.png'),
            ),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    trocaNumeros();
                  });
                },
                child: Image.asset('imagens/dado$numeroDadoDireita.png')),
          ),
        ],
      ),
    );
  }
}
