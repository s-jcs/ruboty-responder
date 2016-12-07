module Ruboty
  module Handlers
    class Keywords < Base
      on /(?<sentence>.*)/,
        all: true,
        name: "respond",
        description: "search for response if keyword exists"

      def respond(message)
        if response = keyword_list.select { |key, value| message[:sentence].match(key.to_s)}
          message.reply(response)
        end
      end

      private

      def keyword_list
        file = File.read(Gem.loaded_specs['ruboty-keywords'].full_gem_path + json_path)
        JSON.parse(file)
      end

      def json_path
        '/keywords/responses.json'
      end
    end
  end
end
