#!/usr/bin/env ruby

require 'prime'

LIMIT = 20

factors = {}

(2..LIMIT).each do |number|
  number.prime_division.each do |prime, power|
    factors[prime] = power if factors[prime].nil? || factors[prime] < power
  end
end

result = factors.reduce(1) { |product, (prime, power)| product * (prime ** power) }
puts result
