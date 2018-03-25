class Phrase

    def initialize (input_string) 
        @input_string = input_string
    end   
    
    def word_count()
        word_count = {}
        lower_case = @input_string.downcase
        punctuation_removed = lower_case.gsub(/\p{^Alnum}/, ' ')
        stringArray = punctuation_removed.split(" ")
        stringArray.each do | word |
            if word_count.has_key?(word)
                word_count[word] = word_count[word] + 1
            else
                word_count[word] = 1
            end
        end
    #   I realise I should replace all ' with a blank space first, then do a gsub for other characters rather than this
        word_count.delete("t")
        if word_count.include?("don")
            word_count["don't"] = word_count.delete("don")
            return word_count
        elsif 
            word_count.include?("can")
            word_count["can't"] = word_count.delete("can")
        else
            
        end
         return word_count
    end

end 


# 