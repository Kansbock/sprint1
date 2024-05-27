import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:projetoeureka3/backend/buscas.dart';
import 'dart:convert';

import 'package:projetoeureka3/widgets/appbar.dart';
import 'package:projetoeureka3/buscaAluno.dart';

class ListaAluno extends StatefulWidget {
  final String nomeAluno;
  const ListaAluno({Key? key, required this.nomeAluno}) : super(key: key);

  @override
  State<ListaAluno> createState() => _ListaAlunoState();
}

class _ListaAlunoState extends State<ListaAluno> {
  late Future<List<dynamic>> _futureData;

  @override
  void initState() {
    super.initState();
    _futureData = BuscarAluno(widget.nomeAluno);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarM(),
      body: Center(
        child: FutureBuilder<List<dynamic>>(
          future: _futureData,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator(); 
            } else if (snapshot.hasError) {
              return Text('Erro ao carregar os dados: ${snapshot.error}');
            } else {
              List<dynamic> data = snapshot.data!;
              return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (cotext) => BuscaAluno(
                            nome: data[index]['nomeAluno'],
                            projeto: data[index]['tituloTrabalho'],
                            estande: data[index]['numeroEstande'],
                            desc: data[index]['descricaoTrabalho'],
                          ),
                        ),
                      );
                    },
                    child: Text(data[index]['nomeAluno']),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
