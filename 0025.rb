#!/usr/bin/env ruby

LIMIT = ('9' * 999).to_i

fibo = [1, 1]
index = 2

begin
  fibo[fibo[0] < fibo[1] ? 0 : 1] = fibo.reduce(&:+)
  index += 1
end until fibo.max > LIMIT

puts index
