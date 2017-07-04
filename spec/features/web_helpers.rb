def create_meetrip(from_location, to_location, contact_info)
  post '/meetrips/create', from_location: from_location,
                           to_location: to_location,
                           contact_info: contact_info
end
