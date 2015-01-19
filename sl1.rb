# SL1. The calculator

# We’ll start with something nice and easy so we learn this testing thing quickly.

# Write a class, called Calculator, that basically performs all four basic math operations: addition, substraction, multiplication and
# division. In order to keep it simple, all of them will have two numeric parameters.

# After writing your class, write several tests. For each one, print “OK” if it succeeded, “FAIL” otherwise, in order to test that
# everything is working out properly.
class Calculator
	def addition(x, y)
		x + y if x.is_a?(Numeric) && y.is_a?(Numeric)
	end

	def substraction(x, y)
		x - y
	end

	def multiplication(x, y)
		x * y
	end

	def division(x, y)
		x / y
	end
end

# TESTING IMPLEMENTING
calculator = Calculator.new

print "Testing addition method: "
if calculator.addition(1, 2) == 3
	puts "OK"
else
	puts "FAIL"
end

print "Testing addition method: "
if calculator.addition([], 2) == 3
	puts "OK"
else
	puts "FAIL"
end

# --- substraction

print "Testing substraction method: "
if calculator.substraction(5, 2) == 3
	puts "OK"
else
	puts "FAIL"
end

# ---