module Ruboty
  module Handlers
    class Keywords < Base
      on /(?<sentence>.*)/,
        all: true,
        name: "respond",
        description: "search for response if keyword exists"

      def respond(message)
        sentence = message[:sentence]
        message.reply("#{sentence}")
        keyword_list
        ##if response = keyword_list.select { |key, value| message[:keyword].match(key.to_s)}
        ##  message.reply(response)
        ##end
      end

      private

      def keyword_list
        puts Gem.loaded_specs
        #file = File.read("/keywords/responses.json")
        #JSON.parse(file)
      end
    end
  end
end
