class RedmartSinatraApp < Sinatra::Base
  get '/' do
      erb "Hello World"
    end



  get '/users' do

  @users = User.all

  erb :'users'
  end

  get '/users/:id' do

    erb :'each_user'
  end


end
