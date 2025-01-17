```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success!  Do something with 'response.body'
      print('Success: ${response.body}');
    } else {
      // Handle the error here
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle any other potential errors (e.g., network issues)
    print('Error: $e');
    rethrow; // Re-throw to let a higher level handle it
  }
}
```