class AddLinkToResources < ActiveRecord::Migration[6.1]
  def change
    add_column :resources, :link, :string
  end
end
