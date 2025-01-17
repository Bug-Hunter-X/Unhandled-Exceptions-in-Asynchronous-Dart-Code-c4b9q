```dart
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success!  Do something with 'response.body'
      print('Success: ${response.body}');
    } else {
      // Handle the HTTP error gracefully.
      final error = 'HTTP Error: ${response.statusCode} - ${response.reasonPhrase}';
      print('Error: $error');
      throw Exception(error); // Re-throw with a meaningful message
    }
  } on http.ClientException catch (e) {
    // Handle network exceptions (timeouts, connection errors)
    print('Network Error: $e');
    throw Exception('Network error: Could not reach the server.');
  } on SocketException catch (e) {
    print('SocketException: $e');
    throw Exception('Socket error: Could not connect to the server.');
  } catch (e) {
    // Handle any other unexpected errors
    print('Unexpected Error: $e');
    throw Exception('An unexpected error occurred.');
  }
}
```