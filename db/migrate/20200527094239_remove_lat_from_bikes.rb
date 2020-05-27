class RemoveLatFromBikes < ActiveRecord::Migration[6.0]
  def change
    remove_column :bikes, :lat, :integer
  end
end
