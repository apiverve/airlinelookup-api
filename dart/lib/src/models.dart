/// Response models for the Airline Lookup API.

/// API Response wrapper.
class AirlinelookupResponse {
  final String status;
  final dynamic error;
  final AirlinelookupData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  AirlinelookupResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory AirlinelookupResponse.fromJson(Map<String, dynamic> json) => AirlinelookupResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? AirlinelookupData.fromJson(json['data']) : null,
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

/// Response data for the Airline Lookup API.

class AirlinelookupData {
  AirlinelookupData0? 0;

  AirlinelookupData({
    this.0,
  });

  factory AirlinelookupData.fromJson(Map<String, dynamic> json) => AirlinelookupData(
      0: json['0'] != null ? AirlinelookupData0.fromJson(json['0']) : null,
    );
}

class AirlinelookupData0 {
  String? name;
  dynamic alias;
  String? iata;
  String? icao;
  String? callsign;
  String? country;
  String? id;
  bool? islowcost;
  String? logourl;

  AirlinelookupData0({
    this.name,
    this.alias,
    this.iata,
    this.icao,
    this.callsign,
    this.country,
    this.id,
    this.islowcost,
    this.logourl,
  });

  factory AirlinelookupData0.fromJson(Map<String, dynamic> json) => AirlinelookupData0(
      name: json['name'],
      alias: json['alias'],
      iata: json['iata'],
      icao: json['icao'],
      callsign: json['callsign'],
      country: json['country'],
      id: json['id'],
      islowcost: json['islowcost'],
      logourl: json['logourl'],
    );
}

class AirlinelookupRequest {
  String iata;

  AirlinelookupRequest({
    required this.iata,
  });

  Map<String, dynamic> toJson() => {
      'iata': iata,
    };
}
