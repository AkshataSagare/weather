class City {
  final String name;
  final String? state;
  final String country;

  City({required this.name, this.state, required this.country});

  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "state": state,
      "country": country,
    };
  }
}
