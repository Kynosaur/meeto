class Meeto < Sinatra::Base

  before do
    headers 'Access-control-allow-origin' => '*'
  end

  get '/meetrips' do
    meetrips = Meetrip.all
    if meetrips.any?
      meetrips.to_json
    else
      'No meetrips available'
    end
  end

  post '/meetrips/create' do
    meetrip = Meetrip.create({ from_location: params[:from_location],
                               to_location:   params[:to_location],
                               contact_info:  params[:contact_info] })
    meetrip.to_json
  end

end
