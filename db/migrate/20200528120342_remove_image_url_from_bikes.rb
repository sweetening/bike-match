class RemoveImageUrlFromBikes < ActiveRecord::Migration[6.0]
  def change
    remove_column :bikes, :image_url, :string
  end
end
