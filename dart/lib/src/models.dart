/// Response models for the Airline Lookup API.

/// API Response wrapper.
class AirlinelookupResponse {
  final String status;
  final dynamic error;
  final AirlinelookupData? data;

  AirlinelookupResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory AirlinelookupResponse.fromJson(Map<String, dynamic> json) => AirlinelookupResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? AirlinelookupData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
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
  String? Name;
  String? Alias;
  String? IATA;
  String? ICAO;
  String? Callsign;
  String? Country;

  AirlinelookupData0({
    this.Name,
    this.Alias,
    this.IATA,
    this.ICAO,
    this.Callsign,
    this.Country,
  });

  factory AirlinelookupData0.fromJson(Map<String, dynamic> json) => AirlinelookupData0(
      Name: json['Name'],
      Alias: json['Alias'],
      IATA: json['IATA'],
      ICAO: json['ICAO'],
      Callsign: json['Callsign'],
      Country: json['Country'],
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
