class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.string :location, null: false
      t.timestamp :paid_on
      t.timestamp :completed_on

      t.timestamps
    end
  end
end
