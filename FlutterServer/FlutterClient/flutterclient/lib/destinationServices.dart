

import 'package:http/http.dart' as http;
import "dart:convert";

class Destination {
  final String name;
  final String image;
  final double rate;

  Destination({
    required this.name,
    required this.image,
    required this.rate,
  });
  factory Destination.fromJson(Map<String, dynamic> json) {
    return Destination(
      name: json['name'],
      image: json['image'],
      rate: json['rate'],
  
    );
  }
}
class DestinationService {
  Future<List<Destination>> getDestinations() async {
    final response =
        await http.get(Uri.parse('http://localhost:8080/api/place'));
    if (response.statusCode == 200) {
      final results = jsonDecode(response.body);
      return results
          .map<Destination>((json) => Destination.fromJson(json))
          .toList();
    } else {
      throw Exception('Failed to load users');
    }
  }
}
