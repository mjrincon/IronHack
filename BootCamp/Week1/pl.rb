
class ProgrammingLanguage
  attr_accessor :name, :age, :type
  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end
end

  ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
  python = ProgrammingLanguage.new("Python", 24, "Dynamic")
  javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
  go = ProgrammingLanguage.new("Go", 6, "Static")
  rust = ProgrammingLanguage.new("Rust", 5, "Static")
  swift = ProgrammingLanguage.new("Swift", 2, "Static")
  java = ProgrammingLanguage.new("Java", 20, "Static")

def array_printer(array)
  array.each do | language |
    puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
  end
end

array_of_languages = [ruby, python, javascript, go, rust, swift, java]


array_printer(array_of_languages)

aged_languages = array_of_languages.map do | language | 
	language.age = language.age + 1
	language
end


puts "The programming languages aged one year are: "
array_printer(aged_languages)

puts "----------------"


sorted_languages = aged_languages.sort do | x, y | 
	y.age <=> x.age
	
end


puts "The programming languaged sorted by age are: "
array_printer(sorted_languages)

puts "----------------"

delete_languages = sorted_languages.delete_if do | item |
  item.name == "Java"


end

array_printer(delete_languages)


  
puts "---------------"


array_printer(delete_languages).shuffle


