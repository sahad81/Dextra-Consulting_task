import 'package:http/http.dart' as http;


  Future<http.Response?> getData() async {
    try {
      http.Response _response = await http.get(
        Uri.parse('https://dummy.restapiexample.com/api/v1/employees'),
      ).timeout(Duration(seconds: 15));
      return _response;
    } catch (e) {
      return null;
    }
  }
