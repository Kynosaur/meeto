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
    payload = params
    payload = JSON.parse(request.body.read, :symbolize_names => true) unless params[:from_location]
    meetrip = Meetrip.create({ from_location: payload[:from_location],
                               to_location:   payload[:to_location],
                               contact_info:  payload[:contact_info] })
    meetrip.to_json
  end

end
