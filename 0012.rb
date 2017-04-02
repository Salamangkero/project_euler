#!/usr/bin/env ruby

require 'prime'

total_divisors = 0
number = 1
index = 1

begin
  number += (index += 1)
  all_primes = number.prime_division.map { |prime, power| Array.new(power) { prime } }.flatten

  total_divisors = (1..all_primes.count).reduce(0) do |divisors_count, element_count|
                     divisors_count + all_primes.combination(element_count).to_a.uniq.count
                   end
end while total_divisors < 500

puts number