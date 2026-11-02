/// Response models for the Global Stock Market API.

/// API Response wrapper.
class GlobalstockmarketResponse {
  final String status;
  final dynamic error;
  final GlobalstockmarketData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  GlobalstockmarketResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory GlobalstockmarketResponse.fromJson(Map<String, dynamic> json) => GlobalstockmarketResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? GlobalstockmarketData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Global Stock Market API.

class GlobalstockmarketData {
  String? country;
  String? countryName;
  String? baseline;
  num? year;
  num? month;
  num? value;
  String? date;
  num? previousValue;
  String? previousDate;
  String? changeDirection;
  num? change1m;
  num? change3m;
  num? change6m;
  num? change12m;
  num? changeYtd;
  num? high12m;
  num? low12m;
  num? average12m;
  List<GlobalstockmarketDataHistoryItem>? history;

  GlobalstockmarketData({
    this.country,
    this.countryName,
    this.baseline,
    this.year,
    this.month,
    this.value,
    this.date,
    this.previousValue,
    this.previousDate,
    this.changeDirection,
    this.change1m,
    this.change3m,
    this.change6m,
    this.change12m,
    this.changeYtd,
    this.high12m,
    this.low12m,
    this.average12m,
    this.history,
  });

  factory GlobalstockmarketData.fromJson(Map<String, dynamic> json) => GlobalstockmarketData(
      country: json['country'],
      countryName: json['countryName'],
      baseline: json['baseline'],
      year: json['year'],
      month: json['month'],
      value: json['value'],
      date: json['date'],
      previousValue: json['previousValue'],
      previousDate: json['previousDate'],
      changeDirection: json['changeDirection'],
      change1m: json['change1m'],
      change3m: json['change3m'],
      change6m: json['change6m'],
      change12m: json['change12m'],
      changeYtd: json['changeYtd'],
      high12m: json['high12m'],
      low12m: json['low12m'],
      average12m: json['average12m'],
      history: (json['history'] as List?)?.map((e) => GlobalstockmarketDataHistoryItem.fromJson(e)).toList(),
    );
}

class GlobalstockmarketDataHistoryItem {
  String? date;
  num? value;

  GlobalstockmarketDataHistoryItem({
    this.date,
    this.value,
  });

  factory GlobalstockmarketDataHistoryItem.fromJson(Map<String, dynamic> json) => GlobalstockmarketDataHistoryItem(
      date: json['date'],
      value: json['value'],
    );
}

class GlobalstockmarketRequest {
  String country;
  int? year;
  int? month;
  bool? history;

  GlobalstockmarketRequest({
    required this.country,
    this.year,
    this.month,
    this.history,
  });

  Map<String, dynamic> toJson() => {
      'country': country,
      if (year != null) 'year': year,
      if (month != null) 'month': month,
      if (history != null) 'history': history,
    };
}
