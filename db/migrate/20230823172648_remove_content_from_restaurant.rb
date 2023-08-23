class RemoveContentFromRestaurant < ActiveRecord::Migration[7.0]
  def change
    remove_column :restaurants, :content, :text
  end
end
