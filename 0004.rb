#!/usr/bin/env ruby

factors = [999, 999]

palindrome = 0

begin
  factors[1] = 999

  begin
    number = factors.reduce(&:*).to_s
    palindrome = number.to_i if number == number.reverse && number.to_i > palindrome

    factors[1] -= 1
  end while factors[1] > 99

  factors[0] -= 1
end while factors[0] > 99

puts palindrome
