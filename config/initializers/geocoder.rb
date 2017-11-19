if Rails.env.test?
  Geocoder.configure(:lookup => :test)
  # Particular Look up
  Geocoder::Lookup::Test.add_stub(
    "Santa Barbara, CA", [
      {
        'latitude'     => 34.3987087,
        'longitude'    => -119.8198962,
        'address'      => 'Santa Barbara, CA, USA',
        'state'        => 'California',
        'state_code'   => 'CA',
        'country'      => 'United States',
        'country_code' => 'US'
      }
    ]
  )
  #default stub
  Geocoder::Lookup::Test.set_default_stub(
    [
      {
        'latitude'     => 34.3987087,
        'longitude'    => -119.8198962,
        'address'      => 'Santa Barbara, CA, USA',
        'state'        => 'California',
        'state_code'   => 'CA',
        'country'      => 'United States',
        'country_code' => 'US'
      }
    ]
  )  
else
  Geocoder.configure(
    # Geocoding options
    # timeout: 3,                 # geocoding service timeout (secs)
    lookup: :google,            # name of geocoding service (symbol)
    # ip_lookup: :freegeoip,      # name of IP address geocoding service (symbol)
    # language: :en,              # ISO-639 language code
    # use_https: false,           # use HTTPS for lookup requests? (if supported)
    # http_proxy: nil,            # HTTP proxy server (user:pass@host:port)
    # https_proxy: nil,           # HTTPS proxy server (user:pass@host:port)
    # api_key: nil,               # API key for geocoding service
    # cache: nil,                 # cache object (must respond to #[], #[]=, and #del)
    # cache_prefix: 'geocoder:',  # prefix (string) to use for all cache keys

    # Exceptions that should not be rescued by default
    # (if you want to implement custom error handling);
    # supports SocketError and Timeout::Error
    # always_raise: [],

    # Calculation options
    # units: :mi,                 # :km for kilometers or :mi for miles
    # distances: :linear          # :spherical or :linear
    api_key: "AIzaSyDzTwUYnqKcx9uh6hMKUv335E1DenBgcgQ"
  )
end
