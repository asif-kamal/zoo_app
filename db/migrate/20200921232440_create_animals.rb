class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.integer :health_rating 
      t.string :animal_type 
      t.integer :section_id
      t.timestamps
    end
  end
end
