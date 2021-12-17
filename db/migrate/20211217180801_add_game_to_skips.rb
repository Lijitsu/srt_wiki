class AddGameToSkips < ActiveRecord::Migration[6.1]
  def change
    add_reference :skips, :game, null: false, foreign_key: true
  end
end
