class CreateUserSkis < ActiveRecord::Migration
  def change
    create_table :user_skis do |t|
      t.integer :id_user
      t.integer :id_skis
      t.decimal :price

      t.timestamps null: false
    end
  end
end
