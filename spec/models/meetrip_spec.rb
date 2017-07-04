describe Meetrip do
  it 'New Meetrips can be created' do
    meetrip = Meetrip.create( { from_location: 'London',
                                to_location: 'Manchester',
                                contact_info: '555 0123' } )
    expect(meetrip).to have_attributes(from_location: 'London',
                                       to_location:   'Manchester',
                                       contact_info:  '555 0123')
    expect(meetrip.id).not_to eq(nil)
  end
end
