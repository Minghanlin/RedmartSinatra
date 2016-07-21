class CreateDbRedmart < ActiveRecord::Migration
  def change
  create_table :users do |t|

  t.string :name, null: false
  t.string :photo_url
  t.string :nationality, null: false
  t.integer :cc_number, null: false
  t.string :address, null: false
  t.string :email_address, null: false 

  t.timestamps
  end
end
end
