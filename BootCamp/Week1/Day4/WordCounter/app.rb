require_relative("lib/authenticate.rb")

auth = Authenticate.new("matt", "beepboop")

puts "Username:"
username = gets.chomp


puts "Password:"
password = gets.chomp

puts "\n--------\n"


if auth.valid_credentials?(username, password)

correct_username = "matt"
correct_password = "beepboop"

puts "Please enter some text to count words;"
text = gets.chomp

puts "\n--------\n"

puts "The entered text as _ words"
else
	puts "WRONG!"
end	


