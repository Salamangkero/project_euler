#!/usr/bin/env ruby

require 'prime'

LIMIT = 1_000

def cycle_length(history, numerator, denominator)
  key = [numerator, denominator]

  if history[key].nil?
    history[key] = 1
  elsif history[key] == 1
    history[key] = 2
  else
    return history.values.count(2)
  end

  cycle_length(history, (10 * numerator) % denominator, denominator)
end

max_length = number = 0
Prime.each(LIMIT) do |prime|
  if (length = cycle_length({}, 1, prime)) > max_length
    number = prime
    max_length = length
  end
end

puts number
