import 'package:flutter/material.dart';
import 'package:projetoeureka3/backend/buscas.dart';
import 'package:projetoeureka3/widgets/appbar.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

class BuscaProjeto extends StatefulWidget {
  final String projeto;

  const BuscaProjeto({Key? key, required this.projeto}) : super(key: key);

  @override
  State<BuscaProjeto> createState() => _BuscaProjetoState();
}

class _BuscaProjetoState extends State<BuscaProjeto> {
  String nomeOrientador = '';
  String tituloTrabalho = '';
  String numeroEstande = '';
  String descricaoTrabalho = '';


  @override
  void initState() {
    super.initState();
    BuscarProjeto(widget.projeto);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarM(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Text("Trabalho: $tituloTrabalho"),
            ),
            Text("Estande: $numeroEstande"),
            Text("Nome do Orientador: $nomeOrientador"),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Text("Descrição: $descricaoTrabalho"),
            ),
          ],
        ),
      ),
    );
  }
}
