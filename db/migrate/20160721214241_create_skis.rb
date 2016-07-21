class CreateSkis < ActiveRecord::Migration
  def change
    create_table :skis do |t|
      t.string :name
      t.string :brand
      t.integer :width
      t.integer :length
      t.integer :gender_id
      t.integer :category_id
      t.string :image

      t.timestamps null: false
    end
  end
end
