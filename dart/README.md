# Global Stock Market API - Dart/Flutter Client

Global Stock Market tracks share price indices across 36 countries using a normalized 2015 baseline. Send a two-letter country code to receive the latest monthly index value with the previous month's reading and direction, while paid plans add 1, 3, 6 and 12-month and year-to-date changes, the 12-month high, low and average, and the last 12 monthly readings.

[![pub package](https://img.shields.io/pub/v/apiverve_globalstockmarket.svg)](https://pub.dev/packages/apiverve_globalstockmarket)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Global Stock Market API](https://apiverve.com/marketplace/globalstockmarket?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_globalstockmarket: ^1.2.5
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_globalstockmarket/apiverve_globalstockmarket.dart';

void main() async {
  final client = GlobalstockmarketClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'country': 'DE',
      'year': 2023,
      'month': 6,
      'history': true
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
  "data": {
    "country": "DE",
    "countryName": "Germany",
    "baseline": "2015=100",
    "year": 2026,
    "month": 9,
    "value": 159.6559,
    "date": "2026-09-01",
    "previousValue": 163.2341,
    "previousDate": "2026-08-01",
    "changeDirection": "down",
    "change1m": -2.1921,
    "change3m": 2.3115,
    "change6m": 6.7657,
    "change12m": 5.4324,
    "changeYtd": 3.4851,
    "high12m": 163.2341,
    "low12m": 149.5385,
    "average12m": 156.1535,
    "history": [
      {
        "date": "2025-10-01",
        "value": 154.4256
      },
      {
        "date": "2025-11-01",
        "value": 150.3501
      },
      {
        "date": "2025-12-01",
        "value": 154.2791
      },
      {
        "date": "2026-01-01",
        "value": 159.3243
      },
      {
        "date": "2026-02-01",
        "value": 160.134
      },
      {
        "date": "2026-03-01",
        "value": 149.5385
      },
      {
        "date": "2026-04-01",
        "value": 153.3461
      },
      {
        "date": "2026-05-01",
        "value": 156.074
      },
      {
        "date": "2026-06-01",
        "value": 156.0489
      },
      {
        "date": "2026-07-01",
        "value": 157.4312
      },
      {
        "date": "2026-08-01",
        "value": 163.2341
      },
      {
        "date": "2026-09-01",
        "value": 159.6559
      }
    ]
  }
}
```

## API Reference

- **API Home:** [Global Stock Market API](https://apiverve.com/marketplace/globalstockmarket?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/globalstockmarket](https://docs.apiverve.com/ref/globalstockmarket?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
