class Actor
 include MongoMapper::Document

	key :_id, Integer, :null => false
	key :login, String, :null => false
	key :gravatar_id, String
	key :url, String, :null => false
	key :avatar_url, String

	belongs_to :event
end
