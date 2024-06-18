require 'prime'

lst = Array.new((10**5)*2, 0)
lst_prime = Array.new((10**5)+2, 0)

(1..10**5).each do |i|
  if i.prime?
    lst[i] += 1
    lst[i*2 - 1] += 1
  end

  if lst[i] == 2
    lst_prime[i] += 1
  end
end

(0...10**5).each do |i|
  lst_prime[i+1] += lst_prime[i]
end

q = gets.to_i
q.times do
  l, r = gets.split.map(&:to_i)
  puts lst_prime[r] - lst_prime[l-1]
end
