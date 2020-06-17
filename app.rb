require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    erb :reversed
    original_string = params["string"]
    @reversed_string = original_string.reverse
  end

  get '/friends' do
    # Write your code here!
    @friends = ['Emily Wilding Davison', 'Malala Yousafzai', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']

    erb :friends
  end
end