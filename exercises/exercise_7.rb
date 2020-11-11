require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "Hey user, type in a store name: "
@input = gets.chomp

@store_new = Store.create(name: @input)

# puts @store_new.errors
@store_new.errors.each do | attribute, error | puts "#{attribute} #{error}" end