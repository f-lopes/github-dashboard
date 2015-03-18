class Actor
	include Mongoid::Document
	include Mongoid::Timestamps


	field :id, type:String
	field :login, type:String
	field :gravatar_id, type:String
	field :url, type:String
	field :avatar_url, type:String
end