class CreateSections < ActiveRecord::Migration[6.0]
  def change
    create_table :sections do |t|
      t.string :name
      t.string :environment
      t.integer :user_id
      t.timestamps
    end
  end
end
