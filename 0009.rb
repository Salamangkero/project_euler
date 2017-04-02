#!/usr/bin/env ruby

LIMIT = 1000

(1..LIMIT).each do |a|
  (1..(LIMIT-a)).each do |b|
    c = LIMIT - (a + b)
    break if b > c
    next unless a ** 2 + b ** 2 == c ** 2
    puts a * b * c
    exit
  end
end
