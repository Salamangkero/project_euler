#!/usr/bin/env ruby

LIMIT = 1_000_000

count = 0

def dfs(count, permutation, choices)
  if choices.empty?
    count += 1

    if count == LIMIT
      puts permutation.join
      exit
    else
      return count
    end
  end

  choices.each do |c|
    count = dfs(count, permutation + [c], choices - [c])
  end

  return count
end

# There's probably a "faster" way of computing the millionth lexicographic permutation.
# A formula... or a set of formulae, I believe.
# Tsk, brute force!
dfs(0, [], %w(0 1 2 3 4 5 6 7 8 9))
