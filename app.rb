class RedmartSinatraApp < Sinatra::Base
  # ignore the static pages
  get '/' do
    erb "<h2>Welcome to redmart</h2>"
  end

# Restful resources

get '/users' do
  @users = User.all
  erb :'users/index'
end

get '/users/:id' do
  if params[:id] == 'new'
    erb :'users/new'
  else
    @user = User.find(params[:id])
    erb :'users/show'
  end
end


get '/users/:id/edit' do
  @user = User.find(params[:id])
  erb :'users/edit'
end

post '/users' do
  puts params[:user]


  @new_user = User.new(params[:user])

  if @new_user.save
    # go to all users list
    redirect("/users")
  else
    # throw an error
    erb :"users/new"
  end
end


put '/users/:id' do
  @updated_user = User.find(params[:id])

  if @updated_user.update_attributes( params[:user] )
    redirect("/users")
  end
end




# RESTFUL RESOURCES, CREATE READ UPDATE DELETE
delete '/users/:id' do
  @deleted_user = User.find(params[:id])

  if @deleted_user.destroy
    # go to all users list
    redirect("/users")
  else
    # throw an error
    erb :"users/#{ @deleted_user.id }"
  end

end


#Products Section

get '/products' do
  @products = Product.all
  erb :'products/index'
end

get '/productss/:id' do
  if params[:id] == 'new'
    erb :'products/new'
  else
    @product = Product.find(params[:id])
    erb :'products/show'
  end
end


get '/products/:id/edit' do
  @product = Product.find(params[:id])
  erb :'products/edit'
end

post '/products' do
  puts params[:product]


  @new_product = Product.new(params[:product])

  if @new_product.save
    # go to all products list
    redirect("/products")
  else
    # throw an error
    erb :"products/new"
  end
end


put '/products/:id' do
  @updated_product = Product.find(params[:id])

  if @updated_product.update_attributes( params[:product] )
    redirect("/products")
  end
end




# RESTFUL RESOURCES, CREATE READ UPDATE DELETE
delete '/products/:id' do
  @deleted_product = Product.find(params[:id])

  if @deleted_product.destroy
    # go to all products list
    redirect("/products")
  else
    # throw an error
    erb :"products/#{ @deleted_product.id }"
  end

end


end
