
def ceasar_cipher (phrase, shift)
	up_case_alph = ('A'..'Z').to_a
	down_case_alph = ('a'..'z').to_a

	alpharray = down_case_alph + up_case_alph

	words = phrase.split(" ")

	encrypted = words.collect { |word|

		shifted_chars = word.split("").collect { |c| 
			if alpharray.include?(c)
				c = alpharray.index(c)
				c += shift
				if down_case_alph.include?(down_case_alph[c]) && c > down_case_alph.count
					c = c - down_case_alph.count
				end
				if  c > alpharray.count
					c = (c - alpharray.count) + down_case_alph.count
				end
			c = alpharray[c]
			else
			c
			end
		}.join
	}.join(" ")
	return encrypted
end



