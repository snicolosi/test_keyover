class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :street_type
      t.string :street
      t.string :number
      t.string :city
      t.string :zip
      t.string :country
      t.references :person

      t.timestamps
    end
    add_index :addresses, :person_id
  end
end
