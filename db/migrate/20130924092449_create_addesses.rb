class CreateAddesses < ActiveRecord::Migration
  def change
    create_table :addesses do |t|
      t.integer :street_type
      t.string :street
      t.string :number
      t.string :city
      t.string :zip
      t.string :country
      t.references :person

      t.timestamps
    end
    add_index :addesses, :person_id
  end
end
