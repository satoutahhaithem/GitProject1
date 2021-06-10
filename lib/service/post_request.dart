import 'package:http/http.dart' as http;

class PostRequest {
  Future<http.Response> fetchStudent() {
    return http.get(
      Uri.parse("https://attendance-2.herokuapp.com/api/student/search"),
    );
  }
}
