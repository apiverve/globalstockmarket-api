# Global Stock Market API - Ruby Gem

Global Stock Market tracks share price indices across 36 countries using a normalized 2015 baseline. Send a two-letter country code to receive the latest monthly index value with the previous month's reading and direction, while paid plans add 1, 3, 6 and 12-month and year-to-date changes, the 12-month high, low and average, and the last 12 monthly readings.

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
  month: 6,
  history: true
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ country: "DE", year: 2023, month: 6, history: true })
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/globalstockmarket?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/globalstockmarket?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/globalstockmarket?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
