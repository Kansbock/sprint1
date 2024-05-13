import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> getData(String projeto) async {
  final uri = Uri.parse("http://192.168.15.7/dashboard/Eureka_2023/getprojeto.php?idProjeto=" + projeto);
  final response = await http.get(uri);
  final data = json.decode(response.body);
  bool found = false;

  if (data.isNotEmpty && data[0]['idTrabalho'] == projeto) {
    tituloTrabalho = data[0]['tituloTrabalho'];
    numeroEstande = data[0]['numeroEstande'];
    nomeOrientador = data[0]['nomeOrientador'];
    descricaoTrabalho = data[0]['descricaoTrabalho'];
    found = true;
  }

  if (!found) {
    tituloTrabalho = "Not Found";
    numeroEstande = "Not Found";
    nomeOrientador = "Not Found";
    descricaoTrabalho = "Not Found";
  }
}

String tituloTrabalho = "";
String numeroEstande = "";
String nomeOrientador = "";
String descricaoTrabalho = "";

void main() {
  group('getData', () {
    test('deve recuperar os dados da URL fornecida', () async {
      final projeto = "630";
      final expectedUri = Uri.parse("http://192.168.15.7/dashboard/Eureka_2023/getprojeto.php?idProjeto=$projeto");
      
      await getData(projeto);

      expect(http.get(expectedUri), completes);
    });

    test('deve atribuir os dados corretamente às variáveis de estado', () async {
      final projeto = "630";
      final fakeResponse = [
        {
          'idTrabalho': projeto,
          'tituloTrabalho': 'Bab\u00e1 Eletr\u00f4nica para Pais Deficientes Auditivos',
          'numeroEstande': '123',
          'nomeOrientador': 'SERGIO RIBEIRO AUGUSTO',
          'descricaoTrabalho': 'Este projeto tem como objetivo desenvolver uma bab\u00e1 eletr\u00f4nica para auxiliar pais deficientes auditivos no cuidado dos seus filhos. Atrav\u00e9s do reconhecimento de sons, usando intelig\u00eancia artificial, e movimentos emitidos pelo beb\u00ea, a bab\u00e1 eletr\u00f4nica envia notifica\u00e7\u00f5es e vibra\u00e7\u00f5es para dispositivos m\u00f3veis e vest\u00edveis (\u201cwearables\u201d) dos pais, proporcionando mais seguran\u00e7a e tranquilidade na rotina de cuidados. O projeto visa promover inclus\u00e3o e acessibilidade de pais deficientes auditivos.'
        }
      ];
      final fakeResponseJson = json.encode(fakeResponse);
      final fakeHttp = FakeHttp(fakeResponseJson);

      await getData(projeto);

      expect(tituloTrabalho, 'Bab\u00e1 Eletr\u00f4nica para Pais Deficientes Auditivos');
      expect(numeroEstande, '123');
      expect(nomeOrientador, 'SERGIO RIBEIRO AUGUSTO');
      expect(descricaoTrabalho, 'Este projeto tem como objetivo desenvolver uma bab\u00e1 eletr\u00f4nica para auxiliar pais deficientes auditivos no cuidado dos seus filhos. Atrav\u00e9s do reconhecimento de sons, usando intelig\u00eancia artificial, e movimentos emitidos pelo beb\u00ea, a bab\u00e1 eletr\u00f4nica envia notifica\u00e7\u00f5es e vibra\u00e7\u00f5es para dispositivos m\u00f3veis e vest\u00edveis (\u201cwearables\u201d) dos pais, proporcionando mais seguran\u00e7a e tranquilidade na rotina de cuidados. O projeto visa promover inclus\u00e3o e acessibilidade de pais deficientes auditivos.');
    });

    test('deve definir valores padrão quando nenhum dado é encontrado', () async {
      final projeto = "1";
      final fakeResponse = [];
      final fakeResponseJson = json.encode(fakeResponse);
      final fakeHttp = FakeHttp(fakeResponseJson);

      await getData(projeto);

      expect(tituloTrabalho, 'Not Found');
      expect(numeroEstande, 'Not Found');
      expect(nomeOrientador, 'Not Found');
      expect(descricaoTrabalho, 'Not Found');
    });
  });
}

class FakeHttp extends http.BaseClient {
  final String responseBody;
  FakeHttp(this.responseBody);

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    return Future.value(http.StreamedResponse(Stream.value(utf8.encode(responseBody)), 200));
  }
}
