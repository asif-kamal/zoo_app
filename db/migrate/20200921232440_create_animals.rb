class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.integer :health_rating 
      t.boolean :decreased_livelihood, default: false 
      t.integer :section_id
      t.timestamps
    end
  end
end
