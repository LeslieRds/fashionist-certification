class AddSubtitleAndPicsToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :subtitle, :text
    add_column :posts, :pics, :text
  end
end
