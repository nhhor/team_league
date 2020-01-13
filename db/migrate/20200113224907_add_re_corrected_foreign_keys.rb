class AddReCorrectedForeignKeys < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :games, :teams, column: :team_home_id
    add_foreign_key :games, :teams, column: :team_visitor_id
  end
end
