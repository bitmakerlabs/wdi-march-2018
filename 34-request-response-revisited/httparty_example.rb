require 'httparty'
response = HTTParty.get("https://myttc.ca/finch_station.json")
JSON.parse(response.body)
