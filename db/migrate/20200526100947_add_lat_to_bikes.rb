class AddLatToBikes < ActiveRecord::Migration[6.0]
  def change
    add_column :bikes, :lat, :integer
  end
end
