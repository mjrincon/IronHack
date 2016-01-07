def solve_cipher(string, n)
	LETTERS = ('a'.ord..'z'.ord)

def solve_cipher(string, n)
  string.chars.map {|x| LETTERS.include?(x.ord)?((x.ord - LETTERS.min + n) % 26 + LETTERS.min).chr  : x}.join
end
end



solve_cipher("ifmmp")