def make_prime_list(upper)
  is_prime = Array.new(upper + 1, true)
  is_prime[0] = is_prime[1] = false # 0と1は素数ではない

  (2..Math.sqrt(upper).to_i).each do |i|
    (i * i).step(upper, i) { |j| is_prime[j] = false } if is_prime[i]
  end
  (2..upper).select { |i| is_prime[i] }
end

n = gets.to_i
ans = 0

primes = make_prime_list(2*(10**6))

# 素数の8乗の場合
primes.each do |i|
  break if i**8 > n
  ans += 1
  # p i
end

# 素数の2乗 * 素数の2乗 の場合
len = primes.length
(0...(len-1)).each do |i|
  break if primes[i]**2 + primes[i+1]**2 > n
  ((i+1)...len).each do |j|
    break if primes[i]**2 * primes[j]**2 > n
    ans += 1
    # p [primes[i], primes[j]]
  end
end

puts ans
