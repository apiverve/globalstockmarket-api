# Global Stock Market API - PHP Package

Global Stock Market tracks share price indices across 36 countries using a normalized 2015 baseline. Send a two-letter country code to receive the latest market index value, baseline, and date.

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

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/globalstockmarket?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/globalstockmarket?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/globalstockmarket?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
