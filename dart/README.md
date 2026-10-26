# Airline Lookup API - Dart/Flutter Client

Airline Lookup is an airline codes API that matches IATA codes and airline names to carrier profiles, returning the official title, callsign, registration country, and low-cost status. Paid tiers add three-letter ICAO code lookups and carrier logo URLs.

[![pub package](https://img.shields.io/pub/v/apiverve_airlinelookup.svg)](https://pub.dev/packages/apiverve_airlinelookup)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Airline Lookup API](https://apiverve.com/marketplace/airlinelookup?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_airlinelookup: ^1.2.3
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_airlinelookup/apiverve_airlinelookup.dart';

void main() async {
  final client = AirlinelookupClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'iata': 'AA'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": [
    {
      "name": "American Airlines",
      "alias": null,
      "iata": "AA",
      "icao": "AAL",
      "callsign": "AMERICAN",
      "country": "United States",
      "id": "AA",
      "islowcost": false,
      "logourl": "https://storage.googleapis.com/apiverve/APIResources/arlinelookup/logos/AA.png?X-Goog-Algorithm=..."
    }
  ]
}
```

## API Reference

- **API Home:** [Airline Lookup API](https://apiverve.com/marketplace/airlinelookup?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/airlinelookup](https://docs.apiverve.com/ref/airlinelookup?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
