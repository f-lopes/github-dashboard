class EventsController < ActionController::Base

	def index
		Actor.count
	end
end