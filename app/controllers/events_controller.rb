require_relative '../models/actor'

class EventsController < ActionController::Base

	def index
		puts 'nb actor = ' + Actor.count().to_s
		@actors = Actor.all()
	end
end