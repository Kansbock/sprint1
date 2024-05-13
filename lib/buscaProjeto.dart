import 'package:flutter/material.dart';
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

  Future<void> getData(String projeto) async {
  final uri = Uri.parse("http://192.168.15.7/dashboard/Eureka_2023/getprojeto.php?idProjeto=" + projeto);
  final response = await http.get(uri);
  final data = json.decode(response.body);
  bool found = false;

  if (data.isNotEmpty && data[0]['idTrabalho'] == projeto) {
      setState(() {
        tituloTrabalho = data[0]['tituloTrabalho'];
        numeroEstande = data[0]['numeroEstande'];
        nomeOrientador = data[0]['nomeOrientador'];
        descricaoTrabalho = data[0]['descricaoTrabalho'];
      });
      found = true;
    }

  if (!found) {
    setState(() {
      tituloTrabalho = "Not Found";
      numeroEstande = "Not Found";
      nomeOrientador = "Not Found";
      descricaoTrabalho = "Not Found";
    });
  }
}


  @override
  void initState() {
    super.initState();
    getData(widget.projeto);
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
