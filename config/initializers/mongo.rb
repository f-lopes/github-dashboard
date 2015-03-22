@dbhost = 'ds059907.mongolab.com'
@dbport = '059907'
@dbuser = 'user'
@dbpass = 'ingesup'
@db = 'chat'

MongoMapper.connection = Mongo::Connection.new(@dbhost, @dbport)
MongoMapper.database = @db
MongoMapper.database.authenticate(@dbuser, @dbpass)