class Actor
 include MongoMapper::Document

	key :_id, String
	key :login, String
	key :gravatar_id, String
	key :url, String
	key :avatar_url, String
end
