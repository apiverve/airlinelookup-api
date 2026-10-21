# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_airlinelookup"
  spec.version       = "1.2.2"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "Airline Lookup API - Ruby Client"
  spec.description   = "Airline Lookup is an airline codes API that matches IATA codes and airline names to carrier profiles, returning the official title, callsign, registration country, and low-cost status. Paid tiers add three-letter ICAO code lookups and carrier logo URLs."
  spec.homepage      = "https://apiverve.com/marketplace/airlinelookup?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/airlinelookup-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/airlinelookup"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
