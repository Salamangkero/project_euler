#!/usr/bin/env ruby

require 'set'

LIMIT = 100

terms = Set.new

(2..LIMIT).each { |a| (2..LIMIT).each { |b| terms << a**b } }

puts terms.count
