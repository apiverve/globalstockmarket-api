Pod::Spec.new do |s|
  s.name             = 'APIVerveGlobalStockMarket'
  s.version          = '1.2.3'
  s.summary          = 'Global Stock Market tracks share price indices across 36 countries using a normalized 2015 baseline.'
  s.description      = <<-'DESC'
Global Stock Market tracks share price indices across 36 countries using a normalized 2015 baseline. Send a two-letter country code to receive the latest market index value, baseline, and date.

This iOS/macOS SDK provides a convenient way to access the Global Stock Market from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/globalstockmarket?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/globalstockmarket-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveGlobalStockMarket/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
