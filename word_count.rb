class Phrase

    def initialize (input_string) 
        @input_string = input_string
    end   
    
    def word_count()
        @wordCount = {}
        @stringArray = @input_string.split(" ")
        @stringArray.each do | word |
            if @wordCount.has_key?(word)
                @wordCount[word] = @wordCount[word] + 1
            else
                @wordCount[word] = 1
            end
        end
        return @wordCount
    end
end 