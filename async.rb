require 'async'
require 'net/http'
require 'uri'

Async do
  ["ruby", "rails", "async"].each do |topic|
    Async do
      Net::HTTP.get(URI "https://www.google.com/search?q=#{topic}")
    end
  end
end
