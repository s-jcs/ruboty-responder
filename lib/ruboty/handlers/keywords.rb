module Ruboty
  module Handlers
    class Keywords < Base
      on /(?<sentence>.*)/,
        all: true,
        name: "keyword",
        description: "search for response if keyword exists"

      def keyword(message)
        sentence = message[:sentence]
        message.reply("#{sentence}")
        ##if response = keyword_list.select { |key, value| message[:keyword].match(key.to_s)}
        ##  message.reply(response)
        ##end
      end

      private

      def keyword_list
        file = File.read("/keywords/responses.json")
        JSON.parse(file)
      end
    end
  end
end
