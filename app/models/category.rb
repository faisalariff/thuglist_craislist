class Category < ActiveRecord::Base

  has_many :posts

  def display_name
    case name
    when "buy guns", "sell guns"
      "gun"
    when "buy bling", "sell bling"
      "bling"
    when "buy drugs", "sell drugs"
      "drugs"
    else
      name
    end
  end
end