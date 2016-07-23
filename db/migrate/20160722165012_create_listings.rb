class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
        t.integer :user_id
        t.integer :ski_id
        t.decimal :price
        t.string :image

        t.timestamps null: false
    end
  end
end
