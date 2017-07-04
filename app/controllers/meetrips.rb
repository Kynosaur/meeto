class Meeto < Sinatra::Base

  post '/meetrips/create' do
    meetrip = Meetrip.create({ from_location: params[:from_location],
                               to_location:   params[:to_location],
                               contact_info:  params[:contact_info] })
    meetrip.to_json
  end

end
