class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :surname
      t.string :title
      t.string :organization

      t.timestamps
    end
  end
end
