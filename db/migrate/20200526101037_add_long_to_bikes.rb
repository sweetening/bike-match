class AddLongToBikes < ActiveRecord::Migration[6.0]
  def change
    add_column :bikes, :long, :integer
  end
end
