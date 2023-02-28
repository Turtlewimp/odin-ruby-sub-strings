def substrings (string, dictionary)

    string_char = string.downcase.split("")
    word_size = Array.new
    matched_substrings = []
    all_matched_substrings = []
    frequency_hash = Hash.new(0)

    dictionary.each do |word|
        word_size.push(word.length)
    end

    word_size.uniq.each do |size|

        substrings = []
        i = 0
        until i > string.length - size do
            a_substring = []
            j = 0
            until j >= size do
                a_substring.push(string_char[i + j])
                j += 1
            end

            substrings.push(a_substring.join)

            i += 1
        end

        matched_substrings = substrings.select {|substring| dictionary.include?(substring) }

        all_matched_substrings.concat(matched_substrings)
    end
    

    all_matched_substrings.sort.reduce(frequency_hash) do |frequency, word|
        frequency[word] += 1
        frequency
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
below = "below"
greeting = "Howdy partner, sit down! How's it going?"


#substrings(below, dictionary)
#substrings(greeting, dictionary)