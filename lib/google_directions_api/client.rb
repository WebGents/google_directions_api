require 'httparty'
require_relative 'client/request'

module GoogleDirectionsApi
  # Client requests
  class Client
    include HTTParty
    include GoogleDirectionsApi::Client::Request

    base_uri 'https://maps.googleapis.com/maps/api/directions'.freeze
  end
end
