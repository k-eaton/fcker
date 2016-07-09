require 'open-uri'
require 'fcker/version'

module Fcker
  # Your code goes here...

  class Base

    def hi
      puts 'Hello World!'
    end

    def lorem
      uri = URI.parse("http://loripsum.net/api/1/verylong/plaintext")
      uri.open {|f| p f.first.chomp }
    end
  end
end

require 'fcker/paragraph'
require 'fcker/kanye'
