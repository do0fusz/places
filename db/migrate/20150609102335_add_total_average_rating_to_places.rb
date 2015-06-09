class AddTotalAvarageRatingToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :total_avarage, :integer, default: 0
  end
end
