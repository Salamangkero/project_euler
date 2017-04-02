#!/usr/bin/env ruby

LIMIT = 1_000

number = 3
total = 0

begin
  total += number
  number += 3
end while number < LIMIT

number = 5
begin
  total += number
  break unless (number += 5) < LIMIT
  total += number
  number += 10
end while number < LIMIT

puts total
