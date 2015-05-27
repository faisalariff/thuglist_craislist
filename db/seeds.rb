require 'faker'

category_name = ["buy guns", "sell guns", "sell drugs", "buy drugs","buy bling","sell bling"]

50.times do

  category_name.each do |x|
    category = Category.find_by(name: x)
    cat.post.create()

  end
  # fakepost = Post.new
  # fakepost.postcat = [:buyguns, :buydrugs, :buybling].sample
  # fakepost.posttitle = Faker::Commerce.product_name
  # fakepost.postdesc = Faker::Lorem.sentence
  # fakepost.price = Faker::Commerce.price
  # fakepost.address = Faker::Address.street_address
  # fakepost.name = Faker::Name.name
  # fakepost.email = Faker::Internet.email
  # fakepost.date = Faker::Date.backward(14)

  # fakepost.save
end


# category_name = ["buy guns", "sell guns", "sell drugs", "buy drugs","buy bling","sell bling"]

# category_name.each do |x|
#   cat = Category.create(name: x)

# end