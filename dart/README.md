# Global Stock Market API - Dart/Flutter Client

Global Stock Market is a tool for comparing stock market performance across 36 countries. It returns a normalized share price index (2015=100) from OECD data, allowing you to compare market growth between countries over time.

[![pub package](https://img.shields.io/pub/v/apiverve_globalstockmarket.svg)](https://pub.dev/packages/apiverve_globalstockmarket)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Global Stock Market API](https://apiverve.com/marketplace/globalstockmarket?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_globalstockmarket: ^1.1.14
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
      'year': 2023
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
    "value": 154.28,
    "baseline": "2015=100",
    "date": "2025-12-01",
    "lastUpdated": "2026-02-05T07:00:00.000Z"
  }
}
```

## API Reference

- **API Home:** [Global Stock Market API](https://apiverve.com/marketplace/globalstockmarket?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/globalstockmarket](https://docs.apiverve.com/ref/globalstockmarket?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
