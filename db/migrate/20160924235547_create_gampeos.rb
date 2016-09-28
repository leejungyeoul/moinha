class CreateGampeos < ActiveRecord::Migration
  def change
    create_table :gampeos do |t|
      t.string :apply_current
      t.string :apply_num
      t.string :apply_peo
      t.timestamps null: false
    end
  end
end
