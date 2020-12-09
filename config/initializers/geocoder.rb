# config/initializers/geocoder.rb
Geocoder.configure(

    # street address geocoding service (default :nominatim)
    lookup: :nominatim,
  
    # IP address geocoding service (default :ipinfo_io)
    ip_lookup: :maxmind,
  
    # to use an API key:
    # api_key: ENV['SECRET_KEY'],
  
    # geocoding service request timeout, in seconds (default 3):
    timeout: 5,
  
    # set default units to miles:
    units: :mi
  
    # caching (see [below](#caching) for details):
    # cache: Redis.new,
    # cache_prefix: "..."
  
  )