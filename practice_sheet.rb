#!/usr/bin/env ruby

require_relative 'words'

Words.all.select do |word|
  word.single_char?
end.each do |word|
  puts word.char
end
