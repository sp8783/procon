n, k = gets.split.map(&:to_i)
r = gets.split.map(&:to_i)

ranges = r.map { |ri| (1..ri).to_a }

ranges.first.product(*ranges[1...n]).each do |sequence|
  if sequence.sum % k == 0
    puts sequence.join(' ')
  end
end
