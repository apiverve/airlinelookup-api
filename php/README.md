# Airline Lookup API - PHP Package

Airline Lookup is an airline codes API that matches IATA codes and airline names to carrier profiles, returning the official title, callsign, registration country, and low-cost status. Paid tiers add three-letter ICAO code lookups and carrier logo URLs.

## Installation

Install via Composer:

```bash
composer require apiverve/airlinelookup
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Airlinelookup\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['iata' => 'AA']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Airlinelookup\Client;
use APIVerve\Airlinelookup\Exceptions\APIException;
use APIVerve\Airlinelookup\Exceptions\ValidationException;

try {
    $response = $client->execute(['iata' => 'AA']);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/airlinelookup?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/airlinelookup?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/airlinelookup?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
