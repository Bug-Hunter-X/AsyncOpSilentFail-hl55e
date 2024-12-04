```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      // Process data
    } else {
      // Inform the user about the error, rather than a silent failure
      throw Exception('Request failed with status: ${response.statusCode}.');
    }
  } catch (e) {
    // Log the error for debugging purposes
    print('Error fetching data: $e');
    // Provide appropriate feedback to the user (e.g., show an error message, retry mechanism)
    // Example: show a user-friendly error message
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Error'),
          content: Text('Failed to fetch data: ${e.toString()}'),
        )
      );
  }
}
```