class Post 
	attr_reader :title, :date, :text 
	def initialize(title, date, text)
		@title = title
		@date = date
		@text = text
  end
	def print
		puts "#{@title} #{@date} #{@text}"
	end
end	