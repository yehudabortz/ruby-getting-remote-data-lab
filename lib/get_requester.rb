require 'open-uri'
require 'net/http'
require 'JSON'

class GetRequester

    def initialize(url_string)
        @url_string = url_string
    end

    def get_response_body
        uri = URI.parse(@url_string)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        parsed_data = JSON.parse(get_response_body)
    end
end
