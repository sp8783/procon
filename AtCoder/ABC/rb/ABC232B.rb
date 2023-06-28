S = gets.chomp.chars
T = gets.chomp.chars

ans = "Yes"
k = nil
S.zip(T) do |s, t|
  if k.nil?
    k = (s.ord - t.ord) % 26
  else
    if k != (s.ord - t.ord) % 26
      ans = "No"
      break
    end
  end
end

puts ans
