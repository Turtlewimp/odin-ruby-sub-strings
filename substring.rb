def substrings (string, dictionary)

    p string
    p dictionary

    string_char = string.split("")
    #word_size = Array.new
    substrings = []
    matched_substrings = []
    all_matched_substrings = []
    frequency_hash = Hash.new(0)

    p string_char

    #new array of word size from dictionary
    #use uniq
    #dictionary.each do |word|
    #    word_size.push(word.length)
    #end

    #use this new words size array to generate substrings
    

    dictionary.each do |word|
        p word

        i = 0
        until i > string.length - word.length do
            a_substring = []
            j = 0
            until j >= word.length do
                a_substring.push(string_char[i + j])
                j += 1
            end
            
            p a_substring

            substrings.push(a_substring.join)

            i += 1
        end

        p substrings

        matched_substrings = substrings.select {|substring| substring == word }
        p matched_substrings

        all_matched_substrings.concat(matched_substrings)
        p all_matched_substrings
    end
    

    all_matched_substrings.reduce(frequency_hash) do |frequency, word|
        frequency[word] += 1
        frequency
        p frequency
    end

    p frequency_hash
    frequency_hash

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
below = "below"
greeting = "Howdy partner, sit down! How's it going?"

test_word = "test"
test_array = ["test"]

#substrings(below, dictionary)
substrings(greeting, dictionary)
#substrings(test_word, test_array)