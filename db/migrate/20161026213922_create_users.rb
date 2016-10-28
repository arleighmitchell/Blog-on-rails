class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
	  t.string :username, default: ""
      t.string :first_name, default: ""
      t.string :last_name, default: ""
      t.integer :age, default: 0
      t.string :email, default: ""
      t.string :password, default: ""
      
      t.timestamps null: false
    end
  end
end
