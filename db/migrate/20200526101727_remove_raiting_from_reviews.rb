class RemoveRaitingFromReviews < ActiveRecord::Migration[6.0]
  def change
    remove_column :reviews, :raiting, :integer
  end
end
