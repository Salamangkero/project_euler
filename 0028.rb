#!/usr/bin/env ruby

LIMIT = 1001

sum = 1
number = 1
increment = 2

begin
  4.times { sum += (number += increment) }
  increment += 2
end while increment < LIMIT

puts sum
