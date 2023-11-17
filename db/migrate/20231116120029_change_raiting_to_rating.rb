class ChangeRaitingToRating < ActiveRecord::Migration[7.1]
  def change
    rename_column(:movies, :raiting, :rating)
  end
end
