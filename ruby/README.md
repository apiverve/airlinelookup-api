# Airline Lookup API - Ruby Gem

Airline Lookup is an airline codes API that matches IATA codes and airline names to carrier profiles, returning the official title, callsign, registration country, and low-cost status. Paid tiers add three-letter ICAO code lookups and carrier logo URLs.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_airlinelookup'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_airlinelookup
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_airlinelookup'

# Initialize the client
client = APIVerve::Airlinelookup::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ iata: "AA" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ iata: "AA" })
  puts response["data"]
rescue APIVerve::Airlinelookup::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Airlinelookup::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Airlinelookup::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/airlinelookup?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/airlinelookup?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/airlinelookup?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
