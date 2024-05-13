import 'package:test/test.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<dynamic>> getData(String nomeAluno, http.Client client) async {
  final uri = Uri.parse("http://10.2.0.96/dashboard/Eureka_2023/getdata.php?nome=$nomeAluno");
  final response = await client.get(uri);
  final data = json.decode(response.body);
  return data;
}

class MockClient extends http.BaseClient {
  String? lastUrlRequested;
  String mockResponse = '[]';

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    lastUrlRequested = request.url.toString();
    return http.StreamedResponse(
      Stream.value(utf8.encode(mockResponse)),
      200,
    );
  }
}

void main() {
  group('getData', () {
    test('faz uma solicitação HTTP com o nome do aluno fornecido', () async {
      final client = MockClient();
      final nomeAluno = 'joao';
      final urlEsperada = 'http://192.168.15.7/dashboard/Eureka_2023/getdata.php?nome=$nomeAluno';

      await getData(nomeAluno, client);

      expect(client.lastUrlRequested, equals(urlEsperada));
    });

    test('lida adequadamente com a resposta HTTP retornada', () async {
      final client = MockClient();
      final nomeAluno = 'joao';

      client.mockResponse = '[{"nome": "joao", "estande": 20}]';

      final dados = await getData(nomeAluno, client);

      expect(dados, isList);
      expect(dados.length, 1);
      expect(dados[0]['nome'], 'joao');
      expect(dados[0]['estande'], 20);
    });

    test('lida adequadamente com uma resposta HTTP vazia', () async {
      final client = MockClient();
      final nomeAluno = 'cachorro';

      client.mockResponse = '[]';

      final dados = await getData(nomeAluno, client);

      expect(dados, isEmpty);
    });
  });
}
