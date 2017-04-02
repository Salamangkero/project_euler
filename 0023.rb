#!/usr/bin/env ruby

require 'prime'
require 'set'

LIMIT = 28_123

def d(number)
  divisors = number.prime_division.map { |prime, power| (0..power).map { |x| prime ** x} }.reduce(Set.new([1])) do |set, array|
    next_set = Set.new
    set.each { |i| array.each { |j| next_set << i * j } }
    next_set
  end

  divisors.delete(number)
  divisors.reduce(&:+)
end

abundant_numbers = Set.new(12..28_123).select { |number| number < d(number) }
all_numbers = Set.new(1..28_123)

abundant_numbers.each { |i| abundant_numbers.each { |j| all_numbers.delete(i + j) } }
puts all_numbers.reduce(&:+)
