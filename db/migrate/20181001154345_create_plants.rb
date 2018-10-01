class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :nickname
      t.string :plant_species
      t.string :age
      t.string :description
      t.string :location
      t.string :image_url
      t.string :watering_schedule
      t.integer :user_id
    end
  end
end
