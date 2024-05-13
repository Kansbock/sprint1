import 'package:flutter/material.dart';
import 'package:projetoeureka3/widgets/appbar.dart';

class BuscaAluno extends StatelessWidget {
  final String nome;
  final String projeto;
  final String estande;
  final String desc;

  const BuscaAluno({required this.nome, required this.projeto, required this.estande, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarM(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Aluno: $nome",
            ),
            Text("Estande: $estande"),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Text("Trabalho: $projeto"),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Text("Descrição: $desc"),
            ),
          ],
        ),
      ),
    );
  }
}