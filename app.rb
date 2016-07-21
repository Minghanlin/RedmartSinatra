class RedmartSinatraApp < Sinatra::Base
  get '/' do
      erb "Hello World"
    end

  get '/about' do
      erb "About Redmart"
    end


  get '/users' do

  @users = User.all

  erb :'users'
  end

  get '/users/:id' do
    @user =
    User.find(params[:id])
    erb :'each_user'
  end


end
