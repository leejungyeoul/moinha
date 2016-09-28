class CreateCirpeos < ActiveRecord::Migration
  def change
    create_table :cirpeos do |t|
      t.string :apply_current
      t.string :apply_num
      t.string :apply_peo
      t.timestamps null: false
    end
  end
end
