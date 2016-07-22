class CreateJoinTableListings < ActiveRecord::Migration
  def change
    create_join_table :users, :skis do |t|
      t.index [:user_id, :ski_id]
      t.index [:ski_id, :user_id]
      t.decimal :price
      t.string :image

      t.timestamps null: false
    end
  end
end
