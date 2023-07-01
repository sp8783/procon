S = gets.split.map(&:to_i)

ans = "Yes"
S.each_with_index do |s, i|
  if i != 0
    unless S[i-1] <= S[i]
      ans = "No"
    end
  end
  
  unless 100 <= s && s <= 675
    ans = "No"
  end

  unless s % 25 == 0
    ans = "No"
  end
end

puts ans
