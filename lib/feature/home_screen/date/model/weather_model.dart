class WeatherModel {
  final String city;
  final double tempC;
  final String lastUpdated;
  final String condition;

  WeatherModel({
    required this.city,
    required this.tempC,
    required this.lastUpdated,
    required this.condition,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      city: json['location']['name'],
      tempC: json['current']['temp_c'],
      lastUpdated: json['current']['last_updated'],
      condition: json['current']['condition']['text'],
    );
  }
}
