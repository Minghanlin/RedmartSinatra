class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|

    t.string :name, null: false
    t.string :content, null: false
    t.integer :user_score, null: false
    t.references :user, foreign_key: true
    t.references :product, foreign_key: true

    t.timestamps

  end
end
