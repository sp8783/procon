require 'set'
arr = gets.split.map(&:to_i)
puts Set[*arr].size
