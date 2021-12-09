class CreateSkips < ActiveRecord::Migration[6.1]
  def change
    create_table :skips do |t|

      t.timestamps
    end
  end
end
