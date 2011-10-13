# encoding: utf-8

require 'json'

module Postmark
  module ResponseParsers
    module Json
      def self.decode(data)
        JSON.parse(data)
      end
    end
  end
end
