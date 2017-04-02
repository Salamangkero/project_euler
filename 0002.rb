#!/usr/bin/env ruby

LIMIT = 4_000_000

fibo = [1, 1, 2] # every third element of the fibonacci sequence is even
total = 0

begin
  total += fibo[2]
  fibo[0] = fibo[1] + fibo[2]
  fibo[1] = fibo[0] + fibo[2]
  fibo[2] = fibo[0] + fibo[1]
end while fibo[2] < LIMIT

puts total
