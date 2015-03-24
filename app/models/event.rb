class Event
	include MongoMapper::Document

	key :_id, String, :null => false
	key :type, String, :null => false

	one :actor, :null => false
	one :repo, :null => false

	key :public, Boolean, :null => false
	key :created_at, String, :null => false

end