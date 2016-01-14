require 'ruby-dictionary'
require_relative("lib/word.rb")
 


dictionary = Dictionary.from_file('words')



word = Word.new




word.change_words("dog", "cat")




