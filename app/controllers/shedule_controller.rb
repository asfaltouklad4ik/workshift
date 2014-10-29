class SheduleController < ApplicationController

	def index
		@shedule_grid = initialize_grid(Shedule)
		#@owner = task.(user_email)
	end
end
