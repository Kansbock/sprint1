import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<dynamic>> getData(String nomeAluno) async {
  final uri = Uri.parse("http://192.168.15.7/dashboard/Eureka_2023/getdata.php?nome=$nomeAluno");
  final response = await http.get(uri);
  final data = json.decode(response.body);
  return data;
}

void main() {
  group('getData', () {
    test('should retrieve data for a valid student name', () async {
      String validName = "joao";
      
      List<dynamic> result = await getData(validName);
      
      expect(result, isNotEmpty);
    });

    test('should return an empty list for an invalid student name', () async {
      String invalidName = "InvalidName";
      
      List<dynamic> result = await getData(invalidName);
      
      expect(result, isEmpty);
    });
  });
}
