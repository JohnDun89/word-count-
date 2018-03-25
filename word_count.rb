class Phrase

    def initialize (input_string) 
        @input_string = input_string
    end   
    
    def word_count()
        word_count = {}
        lower_case = @input_string.downcase
        apostrophies_removed = lower_case.gsub(/[']/, '')
        punctuation_removed = apostrophies_removed.gsub(/\p{^Alnum}/, ' ')
        stringArray = punctuation_removed.split(" ")
        stringArray.each do | word |
            if word_count.has_key?(word)
                word_count[word] = word_count[word] + 1
            else
                word_count[word] = 1
            end
        end
        return_value = aposhtrophie_adder (word_count)
         return word_count
    end

    def aposhtrophie_adder (input)
            if input.include?("dont")
                input["don't"] = input.delete("dont")
            elsif 
                input.include?("cant")
                input["can't"] = input.delete("cant")
            else 
            end
        return input
    end

end 
