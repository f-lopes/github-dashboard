require_relative '../models/actor'
require 'open-uri'
require 'zlib'
require 'yajl'
require 'json'

class EventsController < ActionController::Base

	def index
        gz = open('http://data.githubarchive.org/2015-01-01-12.json.gz')
        js = Zlib::GzipReader.new(gz).read
            
        events = []
        Yajl::Parser.parse(js) do |event|
            currentEvent = Event.all(:_id => event['id'])
            
            if currentEvent
                events.push(currentEvent[0])
            else
                actor = Actor.new(
                   :_id => event['actor']['id'],
                   :login => event['actor']['login'], 
                   :gravatar_id => event['actor']['gravatar_id'],
                   :url => event['actor']['url'],
                   :avatar_url => event['actor']['avatar_url']
                   )
               
                repo = Repo.new(
                   :_id => event['repo']['id'],
                   :name => event['repo']['name'],
                   :url => event['repo']['url'])
             
                ## payload
             
                events.push(Event.new(
                    :_id => event['id'],
                    :type => event['type'],
                    :actor => actor,
                    :repo => repo,
                    :public => event['public'],
                    :created_at => event['created_at']))
                
            end

            break # to delete
            
        end
        @data = events
	end
end