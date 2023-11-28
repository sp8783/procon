n = gets.to_i
A = gets.split.map(&:to_i).sort

A.each_cons(2) do |a, b|
  if b - a == 2
    puts a + 1
    exit
  end
end
