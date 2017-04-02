#!/usr/bin/env ruby

require 'prime'

LIMIT = 2_000_000

sum = 496_165_411 # Pre-computed sum of first 10_000 prime numbers
number = 104_729 + 2 # Googled 10_000th prime number

begin
  sum += number if number.prime?
  number += 2
end while number < LIMIT

puts sum
