# Global Stock Market API - Ruby Gem

Global Stock Market tracks share price indices across 36 countries using a normalized 2015 baseline. Send a two-letter country code to receive the latest market index value, baseline, and date.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_globalstockmarket'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_globalstockmarket
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_globalstockmarket'

# Initialize the client
client = APIVerve::Globalstockmarket::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  country: "DE",
  year: 2023,
  month: 6
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ country: "DE", year: 2023, month: 6 })
  puts response["data"]
rescue APIVerve::Globalstockmarket::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Globalstockmarket::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Globalstockmarket::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/globalstockmarket?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/globalstockmarket?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/globalstockmarket?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
