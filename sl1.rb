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
describe Calculator do
	before do
		@calculator = Calculator.new
	end

	describe "#addition" do
		it "should add 5 and 6" do
			addition = @calculator.addition(5,6)
			expect(addition).to eq(11)
		end
	end

	describe "#substraction" do
		it "should substract 2 from 8" do
			substraction = @calculator.substraction(8,2)
			expect(substraction).to eq(6)
		end
	end

	describe "#multiplication" do
		it "should multiplication 3 by 8" do
			multiplication = @calculator.multiplication(3, 8)
			expect(multiplication).to eq(24)
		end
	end

	describe "#division" do
		it "should dvide 35 by 5" do
			division = @calculator.division(35,5)
			expect(division).to eq(7)
		end
	end
end