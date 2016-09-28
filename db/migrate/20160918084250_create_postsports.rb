class CreatePostsports < ActiveRecord::Migration
  def change
    create_table :postsports do |t|
      t.string :title
      t.string :user
      t.string :site
      t.string :date
      t.text :content
      t.string :image_url, default: ""
      t.timestamps null: false
    end
  end
end
