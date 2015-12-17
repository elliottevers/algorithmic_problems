#given a string, returns all the unique substrings
require 'pry'
require_relative 'all_subsets'

def unique_substrings(string)
  hash = all_substrings_hash(string)
  hash.select! do |string|
    hash[string] == 1
  end
  hash.keys
end

def all_substrings_hash(string)
  hash = Hash.new
  all_subsets = all_subsets(string.split(""))
  all_subsets.each do |subs|
    hash[subs.join] ? hash[subs.join] += 1 : hash[subs.join] = 1
  end
  hash
end
