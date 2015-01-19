require 'imdb'
require 'pry'

# SL2. I’m damn right about TV series!

# I love TV series. I hope you do too. One of the main topics about TV series is The Absolute Truth Answers, which everyone thinks
# he has but no one truly does.

# Is Lost Finale as shitty as everyone says? Is The Wire the best TV series ever, or is it Breaking Bad? WHY WAS FIREFLY CANCELLED?
# Is it true that whoever wrote Heroes season 3 was the Devil himself? Why is Community so underrated, being in fact the best comedy ever?

# Write a class, let’s say SeriesMasterOfTheUniverse, with several methods answering questions about the series universe. Try to add
# parameters to most questions: there is no point in testing constants! Then add the testing for it using RSpec. Write several tests
# for each question, exploring different scenarios.

# An example of a method is one that, when passing a list of some TV series, returns the best one. For instance, when prefering The Wire
# when comparing it to Friends, it should pass the test. Otherwise, if it returns Mom as the best comedy aired on 2013, it should fail
# (I mean, Veep or Community were definitely better).

# Upgrade: use IMDB Ruby gem to remove arbitrarity!
# when comparing it to Friends, it should pass the tast. Otherwise, if it returns Mom as the best comedy aired on 2013, it should fail
# (I mean, Veep or Community were definitely better).

# Upgrade: use IMDB Ruby gem to remove arbitrarity!

class SeriesMasterOfTheUniverse
	def initialize
		# @series_cache = [{:show=>"\"The Sopranos\"", :rating=>9.3}, {:show=>"\"The Wire\"", :rating=>9.4}, {:show=>"\"House of Cards\"", :rating=>9.1}, {:show=>"\"Twin Peaks\"", :rating=>9.0}, {:show=>"\"Lost\"", :rating=>8.5}]
	end

	def best_show_ever(shows_array)
		@series = []
		shows_array.each do |show|
			tv_show = get_show_info(show)
			@series << {show: tv_show.title, rating: tv_show.rating}
		end

		# binding.pry
		@series.sort_by! {|show| show[:rating]}.last[:show].gsub("\"", "")
	end

	private

	def get_show_info(show_name)
		tv_show = Imdb::Serie.new(get_show_id(show_name))
	end

	def get_show_id(show)
		show_id = Imdb::Search.new(show).movies.first.id
	end
end

# binding.pry

# array_of_shows = ['Lost', 'The Sopranos', 'The wire', 'House of Cards', 'Twin Peaks']

# series = SeriesMasterOfTheUniverse.new
# puts "La puta mejor serie del mundo es #{series.best_show_ever(array_of_shows)[:show]}"


# testing

describe SeriesMasterOfTheUniverse do
	before do
		@series = SeriesMasterOfTheUniverse.new
	end

	describe "#best_show_ever" do
		it "order shows by rating" do
			array_of_shows = ['Los Serrano', 'Ana y los siete', 'El chiringuito de Pepe', 'El internado', 'Enjuto Mojamuto']
			best_show = @series.best_show_ever(array_of_shows)
			expect(best_show).to eq('Enjuto Mojamuto')
		end
	end
end