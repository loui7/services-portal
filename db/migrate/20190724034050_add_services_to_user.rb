class AddServicesToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :service, foreign_key: true
  end
end
