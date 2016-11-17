require 'ruboty'
require "ruboty/keywords/version"

module Ruboty
  module Keywords
    class Response < Base
      on(
        /foo/,
        name: 'foo',
        description: 'return bar'
      )

      def response(message)
        message.reply("bar")
      end
    end
  end
end
