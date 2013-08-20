class App < Sinatra::Base
  use Rack::Session::Cookie, secret: ENV['SESSION_SECRET']
  use Rack::Flash
  
  use Rack::Protection
  use Rack::Protection::RemoteReferrer
  use Rack::Csrf, skip_if: ->(request) {
    request.env["CONTENT_TYPE"] == "application/json"
  }

  get '/' do
    erb :index
  end
end