require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    original_string = params["string"] #call whatever string they put in there and call it an original
    #string and make the string equal to a key called string
    @reversed_string = original_string.reverse #now set a variable of the original string in reverse equal to @reversed string for every instance

    erb :reversed
  end

  get '/friends' do
    @friends = ['Emily Wilding Davison', 'Harriet Tubman',
      'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']

      erb :friends
      #we are setting our friends variable equal to an array and then we are
      #rendering the friends.erb file to show all the friends

  end
end
