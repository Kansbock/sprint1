import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
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
    _futureData = getData(widget.nomeAluno);
  }

  Future<List<dynamic>> getData(String nomeAluno) async {
    final uri = Uri.parse("http://192.168.15.7/dashboard/Eureka_2023/getdata.php?nome=$nomeAluno");
    final response = await http.get(uri);
    final data = json.decode(response.body);
    return data;
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
                          builder: (context) => BuscaAluno(
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
