class AddLevelToSkips < ActiveRecord::Migration[6.1]
  def change
    add_reference :skips, :level, null: false, foreign_key: true
  end
end
