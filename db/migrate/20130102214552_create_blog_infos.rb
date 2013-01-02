class CreateBlogInfos < ActiveRecord::Migration
  def change
    create_table :blog_infos do |t|
      t.string :title
      t.datetime :published_at
      t.string :url

      t.timestamps
    end
  end
end
