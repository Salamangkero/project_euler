#!/usr/bin/env ruby

LIMIT = 100

square_of_the_sum = (1..LIMIT).reduce(&:+) ** 2
sum_of_the_squares = (1..LIMIT).map { |i| i ** 2 }.reduce(&:+)

puts square_of_the_sum - sum_of_the_squares
