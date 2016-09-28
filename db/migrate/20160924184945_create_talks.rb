class CreateTalks < ActiveRecord::Migration
  def change
    create_table :talks do |t|
      t.string :name
      t.string :pass
      t.string :title
      t.text :content
      
      t.timestamps null: false
    end
  end
end
