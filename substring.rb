
def substrings (phrase, dict)
	listing = Hash.new(0)
	dict.each { |word|
		if phrase.include? word
			listing[word] += 1 
		end
	}
	return listing
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)