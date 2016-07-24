class AddImageToSkis < ActiveRecord::Migration
  def change
    add_column :skis, :image, :string
  end
end
