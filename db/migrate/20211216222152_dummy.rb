class Dummy < ActiveRecord::Migration[6.1]
  def change
    remove_reference :categories, :series
  end
end
