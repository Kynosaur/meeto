feature 'Meetrips' do
  scenario 'can be created and saved to the database via the controller' do
    meetrip = post '/meetrips/create', from_location: 'London',
                                       to_location: 'Manchester',
                                       contact_info: '555 0123'
    expect(meetrip.status).to eq(200)
    p meetrip
    expect(JSON.parse(meetrip.body)).to eq({"id"=>1,
                                            "from_location"=>"London",
                                            "to_location"=>"Manchester",
                                            "contact_info"=>"555 0123"})

  end
end
