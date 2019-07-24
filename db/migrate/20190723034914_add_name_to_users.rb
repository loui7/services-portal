class AddNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :surname, :string
    add_column :users, :contact_number, :string
    add_column :users, :address, :text
  end
end
