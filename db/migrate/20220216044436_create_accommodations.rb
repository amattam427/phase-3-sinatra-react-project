class CreateAccommodations < ActiveRecord::Migration[6.1]
  def change
    create_table :accommodations do |t|
      t.string :name
      t.string :location 
      t.string :description
      t.string :image
      t.integer :like
    end
  end
end
