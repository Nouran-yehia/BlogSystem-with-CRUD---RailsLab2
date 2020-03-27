class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title, null: false, limit:50 ,index: { unique: true }
      t.text :content, null: false 

      t.timestamps
    end
  end
end
