n = gets.to_i
S = gets.chomp.chars

cnt = S.count{ |s| s == "T" }
if cnt*2 > n
  puts "T"
elsif cnt*2 < n
  puts "A"
else
  puts S[-1] == "T" ? "A" : "T"
end
