# Global Stock Market API - PHP Package

Global Stock Market is a tool for comparing stock market performance across 36 countries. It returns a normalized share price index (2015=100) from OECD data, allowing you to compare market growth between countries over time.

## Installation

Install via Composer:

```bash
composer require apiverve/globalstockmarket
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Globalstockmarket\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'country' => 'DE',
    'year' => 2023,
    'month' => 6
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Globalstockmarket\Client;
use APIVerve\Globalstockmarket\Exceptions\APIException;
use APIVerve\Globalstockmarket\Exceptions\ValidationException;

try {
    $response = $client->execute(['country' => 'DE', 'year' => 2023, 'month' => 6]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "country": "DE",
    "countryName": "Germany",
    "baseline": "2015=100",
    "year": 2023,
    "month": 6,
    "value": 154.28,
    "date": "2023-06-01"
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/globalstockmarket?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/globalstockmarket?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/globalstockmarket?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
