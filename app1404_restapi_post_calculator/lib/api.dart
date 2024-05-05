import 'package:http/http.dart' as http;
import 'dart:convert';

Future<Map<String, dynamic>> apiCalculate() async {
  var response = await http.post(
    Uri.parse('https://www.developerthai.com/' + 'flutter/post.php'),
    headers: <String, String>{'content-type': 'application/json'},
    body: jsonEncode(<String, dynamic>{'num1': 20, 'num2': 4, 'op': '/'}),
  );

  if (response.statusCode == 200) {
    return jsonDecode(response.body) as Map<String, dynamic>;
  } else {
    throw Exception('Error');
  }
}
