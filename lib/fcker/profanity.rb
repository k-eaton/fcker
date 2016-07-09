module Fcker
    class Profanity
        class << self 

        def get_bad_word_array
            bad_words = []
            text = File.open("lib/fcker/bad_words.txt", 'r')
            text.each_line do |word|
                bad_words << word
            end
            return bad_words
        end


        def get_bad_word()
            list = Fcker::Profanity.get_bad_word_array()
            bad_word = list.sample() 
            print bad_word
            return bad_word
        end
        end
    end
end


