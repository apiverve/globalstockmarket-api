Global Stock Market API
============

Global Stock Market tracks share price indices across 36 countries using a normalized 2015 baseline. Send a two-letter country code to receive the latest monthly index value with the previous month's reading and direction, while paid plans add 1, 3, 6 and 12-month and year-to-date changes, the 12-month high, low and average, and the last 12 monthly readings.


[![PyPI version](https://img.shields.io/pypi/v/apiverve-globalstockmarket.svg)](https://pypi.org/project/apiverve-globalstockmarket/)

This is a Python wrapper for the [Global Stock Market API](https://apiverve.com/marketplace/globalstockmarket?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Installation

Using `pip`:

```bash
pip install apiverve-globalstockmarket
```

Using `pip3`:

```bash
pip3 install apiverve-globalstockmarket
```

---

## Configuration

Before using the Global Stock Market API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```python
from apiverve_globalstockmarket.apiClient import GlobalstockmarketAPIClient

# Initialize the client with your APIVerve API key
api = GlobalstockmarketAPIClient("[YOUR_API_KEY]")

query = {
    "country": "DE",
    "year": 2023,
    "month": 6,
    "history": true
}

try:
    # Make the API call
    result = api.execute(query)

    # Print the result
    print(result)
except Exception as e:
    print(f"Error: {e}")
```

---

## Usage

The Global Stock Market API documentation is found here: [https://docs.apiverve.com/ref/globalstockmarket](https://docs.apiverve.com/ref/globalstockmarket?utm_source=pypi&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```python
# Import the client module
from apiverve_globalstockmarket.apiClient import GlobalstockmarketAPIClient

# Initialize the client with your APIVerve API key
api = GlobalstockmarketAPIClient("[YOUR_API_KEY]")
```

---

## Perform Request

Using the API client, you can perform requests to the API.

###### Define Query

```python
query = {
    "country": "DE",
    "year": 2023,
    "month": 6,
    "history": true
}
```

###### Simple Request

```python
# Make a request to the API
result = api.execute(query)

# Print the result
print(result)
```

###### Example Response

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

---

## Error Handling

The API client provides comprehensive error handling through the `GlobalstockmarketAPIClientError` exception. Here are some examples:

### Basic Error Handling

```python
from apiverve_globalstockmarket.apiClient import GlobalstockmarketAPIClient, GlobalstockmarketAPIClientError

api = GlobalstockmarketAPIClient("[YOUR_API_KEY]")

query = {
    "country": "DE",
    "year": 2023,
    "month": 6,
    "history": true
}

try:
    result = api.execute(query)
    print("Success!")
    print(result)
except GlobalstockmarketAPIClientError as e:
    print(f"API Error: {e.message}")
    if e.status_code:
        print(f"Status Code: {e.status_code}")
    if e.response:
        print(f"Response: {e.response}")
```

### Handling Specific Error Types

```python
from apiverve_globalstockmarket.apiClient import GlobalstockmarketAPIClient, GlobalstockmarketAPIClientError

api = GlobalstockmarketAPIClient("[YOUR_API_KEY]")

query = {
    "country": "DE",
    "year": 2023,
    "month": 6,
    "history": true
}

try:
    result = api.execute(query)

    # Check for successful response
    if result.get('status') == 'success':
        print("Request successful!")
        print(result.get('data'))
    else:
        print(f"API returned an error: {result.get('error')}")

except GlobalstockmarketAPIClientError as e:
    # Handle API client errors
    if e.status_code == 401:
        print("Unauthorized: Invalid API key")
    elif e.status_code == 429:
        print("Rate limit exceeded")
    elif e.status_code >= 500:
        print("Server error - please try again later")
    else:
        print(f"API error: {e.message}")
except Exception as e:
    # Handle unexpected errors
    print(f"Unexpected error: {str(e)}")
```

### Using Context Manager (Recommended)

The client supports the context manager protocol for automatic resource cleanup:

```python
from apiverve_globalstockmarket.apiClient import GlobalstockmarketAPIClient, GlobalstockmarketAPIClientError

query = {
    "country": "DE",
    "year": 2023,
    "month": 6,
    "history": true
}

# Using context manager ensures proper cleanup
with GlobalstockmarketAPIClient("[YOUR_API_KEY]") as api:
    try:
        result = api.execute(query)
        print(result)
    except GlobalstockmarketAPIClientError as e:
        print(f"Error: {e.message}")
# Session is automatically closed here
```

---

## Advanced Features

### Debug Mode

Enable debug logging to see detailed request and response information:

```python
from apiverve_globalstockmarket.apiClient import GlobalstockmarketAPIClient

# Enable debug mode
api = GlobalstockmarketAPIClient("[YOUR_API_KEY]", debug=True)

query = {
    "country": "DE",
    "year": 2023,
    "month": 6,
    "history": true
}

# Debug information will be printed to console
result = api.execute(query)
```

### Manual Session Management

If you need to manually manage the session lifecycle:

```python
from apiverve_globalstockmarket.apiClient import GlobalstockmarketAPIClient

api = GlobalstockmarketAPIClient("[YOUR_API_KEY]")

query = {
    "country": "DE",
    "year": 2023,
    "month": 6,
    "history": true
}

try:
    result = api.execute(query)
    print(result)
finally:
    # Manually close the session when done
    api.close()
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=pypi&utm_medium=referral&utm_content=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=pypi&utm_medium=referral&utm_content=readme) and all legal documents and agreements.

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
