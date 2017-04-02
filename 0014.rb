#!/usr/bin/env ruby

# OOOHHHHH! I DO SO ABSOLUTELY LOATHE THE COLLATZ SEQUENCE SO VERY MUCH!!!

LIMIT = 1_000_000

# Maintain a hash because I don't wanna recompute the collatz_lengths of previously-computed numbers
collatz_lengths = { 1 => 1 }

number = 1
begin
  n = (number += 1)
  temp_collatz_lengths = {}

  begin
    if collatz_lengths.key?(n)
      break
    else
      temp_collatz_lengths[n] = 0
      temp_collatz_lengths.keys.each { |key| temp_collatz_lengths[key] += 1 }
      n = n.even? ? n / 2 : 3 * n + 1
    end
  end until n == 1

  temp_collatz_lengths.keys.each { |key| temp_collatz_lengths[key] += collatz_lengths[n] }
  collatz_lengths.merge!(temp_collatz_lengths)
end while number < LIMIT

# I could collatz_lengths.key(collatz_lengths.values.max) but I don't wanna traverse the hash twice
max_key = max_value = 0
collatz_lengths.each do |key, value|
  if value > max_value
    max_key = key
    max_value = value
  end
end

puts max_key
