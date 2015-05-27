get '/' do
  # Look in app/views/index.erb
  @categories = Category.all
  erb :index
end

get '/categories/:id' do
  # Look in app/views/index.erb
  @category = Category.find(params[:id])
  @posts = @category.posts
  erb :category
end

post '/categories/:id/posts/new' do
  @category = Category.find(params[:id])
  @posts = @category.posts.create(params["post"])
  redirect to "/categories/#{@category.id}"
end

# get '/get_buy_guns' do
#   @guns = Post.where(postcat: "buyguns")
#   erb :get_buy_guns
# end

# get '/get_buy_drugs' do
#   @drugs = Post.where(postcat: "buydrugs")
#   erb :get_buy_drugs
# end


# get '/get_buy_bling' do
#   @bling = Post.where(postcat: "buybling")
#   erb :get_buy_bling
# end


# get '/post_sell_guns' do
#   erb :post_sell_guns
# end

# post '/post_sell_guns' do
#   params[:postcat] = :buyguns
#   Post.create(params)
#   redirect to "/"
# end



# get '/post_sell_drugs' do
#   erb :post_sell_drugs
# end


# get '/post_sell_bling' do
#   erb :post_sell_bling
# end



# post '/home' do
#   page = params[:option1]
#   redirect to "/#{page}"
# end