class CreateCirly1s < ActiveRecord::Migration
  def change
    create_table :cirly1s do |t|
      t.text :content
      t.integer :num
      t.string :current
      t.timestamps null: false
    end
  end
end
