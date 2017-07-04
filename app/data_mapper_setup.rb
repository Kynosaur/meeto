require 'data_mapper'
require 'dm-postgres-adapter'

require_relative 'models/meetrip'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/meeto_#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_upgrade!
