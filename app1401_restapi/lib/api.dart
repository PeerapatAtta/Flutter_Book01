import 'package:http/http.dart' as http;
import 'dart:convert';

Future<Map<String, dynamic>> apiGetTodo() async {
  var response = await http.get(Uri.parse(
      'https://jsonplaceholder.typicode.com/todos/1')
  );

  if (response.statusCode == 200) {
    return jsonDecode(response.body)
              as Map<String, dynamic>;
  } else {
    throw Exception('Error');
  }
}