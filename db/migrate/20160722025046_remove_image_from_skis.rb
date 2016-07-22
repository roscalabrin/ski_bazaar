class RemoveImageFromSkis < ActiveRecord::Migration
  def change
    remove_column :skis, :image, :string
  end
end
