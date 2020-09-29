class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
    t.string :username
    t.string :role 
    t.string :email
    t.string :password_digest
    t.integer :experience_lvl
    t.integer :section_id

    t.timestamps
    end
  end
end
