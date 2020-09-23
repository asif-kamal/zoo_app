class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.string :topic
      t.text :observations 
      t.integer :user_id 
      t.integer :section_id  


      t.timestamps
    end
  end
end
