puts "Username:"
username = gets.chomp

puts "Password:"
password = gets.chomp

correct_username = "matt"
correct_password = "beepboop"

if username != correct_username || password != correct_password
	puts "AH AH AH, YOU DIDN'T SAY THE MAGIC WORD"
else puts "Welcome back, #{username}"
end	
	

puts "---------------"


puts "Please enter some text to count words;"
text = gets.chomp

text.split.length

puts "------------------"


puts "The entered text has #{text.split.length} words"