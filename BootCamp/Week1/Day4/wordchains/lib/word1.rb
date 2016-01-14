require 'ruby-dictionary'
​
​
class Word
		def change_words(word1, word2)
			dictionary = Dictionary.from_file('words')
			puts word1
			position = 0
			fake_word = word1
			while word1 != word2
				if word1[position] != word2[position]
					fake_word[position] = word2[position]
​
	
					if dictionary.exists?(fake_word) == true
						word1[position] = word2[position]
						position += 1
					else
						fake_word = word1
						position += 1
					end
				end
				puts word1
				
			end
		end
​
​
end