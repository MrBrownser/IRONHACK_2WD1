# SL1. The calculator

# We’ll start with something nice and easy so we learn this testing thing quickly.

# Write a class, called Calculator, that basically performs all four basic math operations: addition, substraction, multiplication and
# division. In order to keep it simple, all of them will have two numeric parameters.

# After writing your class, write several tests. For each one, print “OK” if it succeeded, “FAIL” otherwise, in order to test that
# everything is working out properly.
class Calculator
	def initialize(x, y)
		@x = x
		@y = y
	end

	def addition
		@x + @y
	end

	def substraction
		@x - @y
	end

	def multiplication
		@x * @y
	end

	def division
		@x / @y
	end
end

# TESTING IMPLEMENTING
first_variable = 1
second_variable = 2
calculator = Calculator.new(first_variable, second_variable)

print "Testing addition method: "
if calculator.addition == 3
	puts "OK"
else
	puts "FAIL"
end

print "Testing addition method: "
if calculator.addition == -3
	puts "OK"
else
	puts "FAIL"
end

# -----------------------------------------------------------

print "Testing substraction method: "
if calculator.substraction == -1
	puts "OK"
else
	puts "FAIL"
end

print "Testing substraction method: "
if calculator.substraction == 8
	puts "OK"
else
	puts "FAIL"
end

# -----------------------------------------------------------

print "Testing multiplication multiplication: "
if calculator.multiplication == 2
	puts "OK"
else
	puts "FAIL"
end

print "Testing multiplication multiplication: "
if calculator.multiplication == 27
	puts "OK"
else
	puts "FAIL"
end

# -----------------------------------------------------------

print "Testing division division: "
if calculator.division == 0.0
	puts "OK"
else
	puts "FAIL"
end

print "Testing division division: "
if calculator.division == 8.7
	puts "OK"
else
	puts "FAIL"
end