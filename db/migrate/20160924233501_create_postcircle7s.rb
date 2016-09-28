class CreatePostcircle7s < ActiveRecord::Migration
  def change
    create_table :postcircle7s do |t|
      t.string :title
      t.string :name
      t.string :site
      t.string :date
      t.string :what_sports
      t.string :kakao
      t.text :content
      t.string :current
      t.integer :people_num
      t.string :image_url, default: ""
      t.timestamps null: false

    end
  end
end
