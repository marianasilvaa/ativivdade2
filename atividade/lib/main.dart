import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // Adicionar cor de fundo e titulo
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink,
        appBar: AppBar(
          title: Text('Dados'),
          backgroundColor: Colors.pink,
        ),
        body: Dados(),
      ),
    );
  }
}

class Dados extends StatefulWidget {
// Método dos estado de cada dado
  @override
  _DadosState createState() => _DadosState();
}

class _DadosState extends State<Dados> {
// Criação de variáveis que armazem os valor de cada dado
  int numeroDadoEsquerda = 1;
  int numeroDadoDireita = 3;

  @override
  Widget build(BuildContext context) {
    return Center(
// Método para cetralizar as imagens
      child: Row(children: [
        Expanded(
          child: TextButton(
            onPressed: () {
              // Método que realiza uma ação quando cliclar nos botões
              setState(() {
                // Método responsavel por alterar os valores dos dados
                numeroDadoEsquerda = Random().nextInt(6) + 1; // Método que altera o valor do dado da esquerda
                print('Número do dado = $numeroDadoEsquerda');
              });
            },
            child: Image.asset('Imagens/Dado-$numeroDadoEsquerda.jpg'), // Resposavel por armazenar os valores de dados correspondendo as várivel
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {
              setState(() {
                numeroDadoDireita = Random().nextInt(6) + 1;
                print('Número do dado = $numeroDadoDireita');
              });
            },
            child: Image.asset('Imagens/Dado-$numeroDadoDireita.jpg'),
          ),
        ),
      ]),
    );
  }
}
