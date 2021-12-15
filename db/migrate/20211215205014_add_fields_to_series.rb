class AddFieldsToSeries < ActiveRecord::Migration[6.1]
  def change
    add_column :series, :name, :string
  end
end
