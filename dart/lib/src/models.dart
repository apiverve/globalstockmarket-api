/// Response models for the Global Stock Market API.

/// API Response wrapper.
class GlobalstockmarketResponse {
  final String status;
  final dynamic error;
  final GlobalstockmarketData? data;

  GlobalstockmarketResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory GlobalstockmarketResponse.fromJson(Map<String, dynamic> json) => GlobalstockmarketResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? GlobalstockmarketData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Global Stock Market API.

class GlobalstockmarketData {
  String? country;
  String? countryName;
  double? value;
  String? baseline;
  String? date;
  String? lastUpdated;

  GlobalstockmarketData({
    this.country,
    this.countryName,
    this.value,
    this.baseline,
    this.date,
    this.lastUpdated,
  });

  factory GlobalstockmarketData.fromJson(Map<String, dynamic> json) => GlobalstockmarketData(
      country: json['country'],
      countryName: json['countryName'],
      value: json['value'],
      baseline: json['baseline'],
      date: json['date'],
      lastUpdated: json['lastUpdated'],
    );
}

class GlobalstockmarketRequest {
  String country;
  int? year;

  GlobalstockmarketRequest({
    required this.country,
    this.year,
  });

  Map<String, dynamic> toJson() => {
      'country': country,
      if (year != null) 'year': year,
    };
}
