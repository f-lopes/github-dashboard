MongoMapper.connection = Mongo::MongoClient.new('ds059907.mongolab.com', 59907, :pool_timeout => 5)
MongoMapper.database = "chat-#{Rails.env}"

if defined? (PhusionPassenger)
	PhusionPassenger.on_event(:starting_worker_process) do |forked|
		MongoMapper.connection.connect if forked
	end
end
