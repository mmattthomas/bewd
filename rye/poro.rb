class Rating

	def name
		"rating with #{@stars} stars"
	end

	def stars=(number_of_stars)
		@stars = number_of_stars
	end

	def stars
		@stars
	end

	#aka
	attr_accessor :more_stars

end


#my_rating = Rating.new()
#puts my_rating.name()