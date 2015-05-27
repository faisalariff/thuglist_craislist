class CreatePosts < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :posts do |x|
      x.integer :category_id
      x.string :posttitle
      x.text :postdesc
      x.string :price
      x.string :address
      x.string :name
      x.string :email
      x.string :date

      x.timestamps null: false
    end
  end
end