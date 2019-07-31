class CreateProposals < ActiveRecord::Migration[5.2]
  def change
    create_table :proposals do |t|
      t.boolean :accepted
      t.integer :price, null: false, default: 0
      t.text :notes
      t.references :user, foreign_key: true, null: false
      t.references :service, foreign_key: true, null: false

      t.timestamps
    end
  end
end
