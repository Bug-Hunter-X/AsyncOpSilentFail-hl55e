```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Properly handle the response
      final data = jsonDecode(response.body);
      // Use the data
    } else {
      // Handle error, but don't throw an exception here
      print('Request failed with status: ${response.statusCode}.');
    }
  } catch (e) {
    // This will catch any exception during the request, including network errors.
    print('Error fetching data: $e');
    // Instead of rethrowing, handle the error gracefully.
    // Maybe show an error message to the user or retry the request after a delay
  }
}
```