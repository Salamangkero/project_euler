#!/usr/bin/env ruby

require 'prime'

number = 104729 # Googled 10_000th prime number
begin
  number += 2
end until number.prime?

puts number
