#!/usr/bin/env ruby

require 'prime'
require 'set'

def d(number)
  divisors = number.prime_division.map { |prime, power| (0..power).map { |x| prime ** x} }.reduce(Set.new([1])) do |set, array|
    next_set = Set.new
    set.each { |i| array.each { |j| next_set << i * j } }
    next_set
  end

  divisors.delete(number)
  divisors.reduce(&:+)
end

puts Set.new(2..9_999).select { |i| i != (j = d(i)) && i == (d(j)) }.reduce(&:+)
