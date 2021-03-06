module Ruboty
  module Handlers
    require 'json'

    class Responder < Base
      on /(?<sentence>.*)/,
        all: true,
        name: "respond",
        description: "search for response if keyword exists"

      def respond(message)
        response = get_response(message)
        message.reply(response) unless response.nil?
      end

      private

      def get_response(message)
        #NOTE: only use the last keyword matched
        list = response_list(message)

        unless list.empty?
          response = list[list.to_a.last[0]]
          response[response.keys.sample]
        end
      end

      def response_list(message)
        keyword_list.select { |key, value| message[:sentence].match(key.to_s) }
      end

      def keyword_list
        @keyword_list ||= JSON.parse(File.read(File.join(File.dirname(File.expand_path('..', __FILE__)), json_path)))
      end

      def json_path
        '/keywords/responses.json'
      end
    end
  end
end
