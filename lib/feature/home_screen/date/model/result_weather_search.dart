class ResultWeatherSearch {
  final String city;
  final double tempC;
  final String lastUpdated;
  final String condition;

  ResultWeatherSearch({
    required this.city,
    required this.tempC,
    required this.lastUpdated,
    required this.condition,
  });

  factory ResultWeatherSearch.fromJson(Map<String, dynamic> json) {
    return ResultWeatherSearch(
      city: json['location']['name'],
      tempC: json['current']['temp_c'],
      lastUpdated: json['current']['last_updated'],
      condition: json['current']['condition']['text'],
    );
  }
}
