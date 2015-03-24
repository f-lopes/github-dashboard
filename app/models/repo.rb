class Repo
	include MongoMapper::Document

	key :_id, Integer, :null => false
	key :name, String, :null => false
	key :url, String, :null => false

	belongs_to :event
end