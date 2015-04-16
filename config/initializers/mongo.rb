@dbhost = 'ds045907.mongolab.com'
@dbport = '45907'
@dbuser = 'user'
@dbpass = 'ingesup'
@db = 'dashboard'

# @dbhost = 'localhost'
# @dbport = '27017'
# @dbuser = 'test'
# @dbpass = 'test'

MongoMapper.connection = Mongo::Connection.new(@dbhost, @dbport)
MongoMapper.database = @db
MongoMapper.database.authenticate(@dbuser, @dbpass)

=begin
ActiveRecord::Base.establish_connection(
    :adapter => "monbodb",
    :host => @dbhost,
    :database => @dbhost
)
=end
