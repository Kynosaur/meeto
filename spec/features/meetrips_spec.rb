feature 'Meetrips' do
  scenario 'can be created and saved to the database via the controller' do
    meetrip = post '/meetrips/create', from_location: 'London',
                                       to_location: 'Manchester',
                                       contact_info: '555 0123'
    expect(meetrip.status).to eq(200)
    expect(JSON.parse(meetrip.body)).to eq({"id"=>1,
                                            "from_location"=>"London",
                                            "to_location"  =>"Manchester",
                                            "contact_info" =>"555 0123"})

  end

  scenario 'sends no meetrips available when no meetrips are currently available' do
    meetrip = get '/meetrips'
    expect(meetrip.body).to eq("No meetrips available")
  end

  scenario 'sends list of meetrips if meetrips are currently available' do
    create_meetrip('London', 'Manchester', '555 0123')
    create_meetrip('Birmingham', 'Kaistralia', '123 23423')
    meetrips = get '/meetrips'
    expect(JSON.parse(meetrips.body).length).to eq(2)
  end
end
