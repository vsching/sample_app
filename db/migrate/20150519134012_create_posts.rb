class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.references :user, index: true
      t.datetime :published_time
      t.string :image_url

      t.timestamps
    end
  end
end
