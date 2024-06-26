import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<dynamic>> BuscarAluno(String nomeAluno) async {
    final uri = Uri.parse("http://10.2.0.90/dashboard/Eureka_2023/getdata.php?nome=$nomeAluno");
    final response = await http.get(uri);
    final data = json.decode(response.body);
    return data;
  }
Future<List<dynamic>> BuscarProjeto(String nomeProjeto) async {
    final uri = Uri.parse("http://10.2.0.90/dashboard/Eureka_2023/getprojeto.php?tituloTrabalho=$nomeProjeto");
    final response = await http.get(uri);
    final data = json.decode(response.body);
    return data;
  }