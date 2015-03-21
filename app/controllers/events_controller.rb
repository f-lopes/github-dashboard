class EventsController < ActionController::Base

	def index
		mongo_client = Mongo::MongoClient.new("ds059907.mongolab.com", 59907)
  		database = mongo_client.db("chat")
  		auth = database.authenticate("user", "ingesup")
  		collection = database.collection('actor') 
  		@actors = []
  		collection.find.each {
      		|act|
      		@actors << act
  		}
	end
end