module ApplicationHelper

	# Here, we'll have a master list of answers and teh user's guess will be checked against that list.

	def check_answer(answer)

		citylist = ["Atlanta", "Asheville", "Charlotte", "Raleigh"]

		# Additional master - lists could be placed here

		correct = false #want false until proven correct with the loop.

		citylist.each do |c|
			if answer == c
				correct = true
			end
		end
		return correct
	end

	# Check to see if the answer, while correct, may have already been guessed and put into the database answers. 

	def check_for_dup(answer, database)

		is_dup = false
		
		database.each do |d|
			if answer == d.name
				is dup = true
			end
		end
		return is_dup

	end

end
