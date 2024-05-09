lst = gets.chomp.chars.map(&:to_i)
flg = true
lst.each_cons(2) do |a, b|
  if a <= b
    flg = false
    break
  end
end

puts flg ? 'Yes' : 'No'
