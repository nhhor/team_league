class AddForeignKeyForPlayers < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :players, :teams

  end
end
