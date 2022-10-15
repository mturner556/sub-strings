dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

my_str = "Howdy partner, sit down! How's it going?"

# method should take a string and an array as the second argument
def substring(str, array)
    str.downcase!
    # creates a new hash 
    h = Hash.new()
    # iterates through each word in array and checks if it is a substring of given string
    array.each do |word|
        # if the word is a substring, it stores the word as a key and counts the number of times it occurs
        if str.include?(word)
            h.store(str.scan(/#{word}/)[0], str.scan(/#{word}/).count)
        end
    end
    # returns hash with keys and count
    p h
end

substring(my_str, dictionary)

