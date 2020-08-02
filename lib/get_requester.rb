# Write your code here
require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
  attr_reader :url
  def initialize(url)
    @url = url
  end

  def get_response_body
    uri = URI.parse(@url)
    response = NET::HTTP.get_response(uri)
    response.body
  end

  def parse_json
    parsed = JSON.parse(self.get_response_body)
  end



end
