class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
    	t.string :first_name
    	t.string :last_name 
      t.string :username
      t.string :password_digest
      t.references :role

      t.timestamps
    end
  end
end
