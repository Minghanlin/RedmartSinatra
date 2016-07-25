class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|

    t.string :name, null: false
    t.string :photo_url
    t.string :category, null: false
    t.decimal :price, null: false


    t.timestamps
    end
  end
end
