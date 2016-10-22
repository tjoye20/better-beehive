class CreateBusinesses < ActiveRecord::Migration[5.0]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :business_type
      t.integer :stings
      t.integer :buzzes
      t.string :phone_number
      t.text :special_events
      t.text :address
      t.string :zip_code

      t.timestamps
    end
  end
end
