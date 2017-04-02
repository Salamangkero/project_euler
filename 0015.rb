#!/usr/bin/env ruby

grid = Array.new(21) { Array.new(21) { 0 } }
21.times { |i| grid[i][0] = grid[0][i] = 1 }

(1..20).each { |row| (1..20).each { |column| grid[row][column] = grid[row - 1][column] + grid[row][column - 1] } }

puts grid[20][20]
