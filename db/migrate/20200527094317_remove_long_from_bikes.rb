class RemoveLongFromBikes < ActiveRecord::Migration[6.0]
  def change
    remove_column :bikes, :long, :integer
  end
end
