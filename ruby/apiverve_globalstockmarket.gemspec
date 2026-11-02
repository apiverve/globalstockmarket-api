# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_globalstockmarket"
  spec.version       = "1.2.4"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "Global Stock Market API - Ruby Client"
  spec.description   = "Global Stock Market tracks share price indices across 36 countries using a normalized 2015 baseline. Send a two-letter country code to receive the latest monthly index value with the previous month's reading and direction, while paid plans add 1, 3, 6 and 12-month and year-to-date changes, the 12-month high, low and average, and the last 12 monthly readings."
  spec.homepage      = "https://apiverve.com/marketplace/globalstockmarket?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/globalstockmarket-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/globalstockmarket"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
