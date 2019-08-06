class AddRatingsFieldsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :ratings_avg, :float, null: false, default: 0
    add_column :users, :ratings_qty, :integer, null: false, default: 0
  end
end
