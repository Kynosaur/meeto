class Meetrip
  include DataMapper::Resource

  property :id,            Serial
  property :from_location, String
  property :to_location,   String
  property :contact_info,  Text

end
