import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;

void main() {
  group('Quando buscar dados de um projeto específico', () {
    test('Deve retornar os dados corretos quando o projeto é encontrado', () async {
      final projetoId = "630";
      final uri = Uri.parse("http://192.168.15.7/dashboard/Eureka_2023/getprojeto.php?idProjeto=" + projetoId);

      final response = await http.get(uri);
      final data = json.decode(response.body);

      expect(data, isNotEmpty);
      expect(data[0]['idTrabalho'], projetoId);
      expect(data[0]['tituloTrabalho'], 'Babá Eletrônica para Pais Deficientes Auditivos');
      expect(data[0]['numeroEstande'], '123');
      expect(data[0]['nomeOrientador'], 'SERGIO RIBEIRO AUGUSTO');
      expect(
        data[0]['descricaoTrabalho'],
        'Este projeto tem como objetivo desenvolver uma babá eletrônica para auxiliar pais deficientes auditivos...'
      );
    });

    test('Deve retornar "Not Found" quando o projeto não é encontrado', () async {
      final projetoId = "1";
      final uri = Uri.parse("http://192.168.15.7/dashboard/Eureka_2023/getprojeto.php?idProjeto=" + projetoId);

      final response = await http.get(uri);
      final data = json.decode(response.body);

      expect(data, isEmpty);
    });
  });
}
