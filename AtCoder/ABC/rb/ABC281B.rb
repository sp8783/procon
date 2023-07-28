# 分解して考える
# a, *b, c = gets.chomp.chars

# b = b.join.to_i

# arr = [*"A".."Z"]

# if arr.include?(a) && 100000 <= b && b <= 999999 && arr.include?(c)
#   puts "Yes"
# else
#   puts "No"
# end

# s = gets.chomp
 
# a = s[0]
# b = s[1..6].to_i
# c = s[7]
 
# arr = [*"A".."Z"]
 
# if arr.include?(a) && 100000 <= b && b <= 999999 && arr.include?(c)
#   puts "Yes"
# else
#   puts "No"
# end

# 正規表現で考える
puts gets.chomp[/^[A-Z][1-9]\d{5}[A-Z]$/] ? "Yes" : "No"
