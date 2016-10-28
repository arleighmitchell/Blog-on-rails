class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :body, default: ""
      t.integer :user_id, default: 0
      t.string :title, default: ""
      
      t.timestamps null: false
    end
  end
end
