module GoogleDirectionsApi
  class Client
    # methods for request
    module Request
      # make request to API
      def call(args = {})
        body = { origin: args[:origin], destination: args[:destination], mode: 'driving', key: ENV['GOOGLE_DIRECTIONS_API_KEY'] }
        self.class.get(url(args[:output_format]), query: body).parsed_response
      end

      private

      def url(format)
        "/#{format}"
      end
    end
  end
end
