require 'open-uri'
require 'fcker/version'
require 'fcker/profanity'

module Fcker
  class Base

    class << self
    def hi
      puts 'Hello World!'
    end

    def lorem
      uri = URI.parse("http://loripsum.net/api/1/verylong/plaintext")
      uri.open {|f| p f.first.chomp }
    end

    def bad_word
      Fcker::Profanity.get_bad_word
    end
  end
end
end

require 'fcker/paragraph'
require 'fcker/kanye'

Fcker::Base.bad_word

