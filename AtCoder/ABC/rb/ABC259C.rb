s = gets.chomp.chars.chunk_while {_1 == _2}.to_a
t = gets.chomp.chars.chunk_while {_1 == _2}.to_a

if s == t
  puts 'Yes'
elsif s.size != t.size
  puts 'No'
else
  s.size.times.all? do |i|
    if s[i] == t[i]
      true
    elsif s[i][0] != t[i][0]
      false
    elsif s[i].size <= t[i].size && s[i].size != 1
      true
    else
      false
    end
  end.tap { puts _1 ? 'Yes' : 'No' }
end
