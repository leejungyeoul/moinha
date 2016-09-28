class CreateGamly1s < ActiveRecord::Migration
  def change
    create_table :gamly1s do |t|
      t.text :content
      t.integer :num
      t.string :current
      t.timestamps null: false
    end
  end
end
