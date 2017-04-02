#!/usr/bin/env ruby

require 'prime'

NUMBER = 600_851_475_143

max_prime = NUMBER.prime_division.reduce(0) { |max, prime_and_power| [max, prime_and_power[0]].max }
puts max_prime
