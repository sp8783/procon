require 'prime'

A, B, C, D = gets.split.map(&:to_i)

ans = "Aoki"

(A..B).each do |i|
  flag = true
  (C..D).each do |j|
    if (i + j).prime?
      flag = false
      break
    end
  end
  if flag
    ans = "Takahashi"
    break
  end
end

puts ans
