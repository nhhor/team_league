class RemoveColumnsFromTeams < ActiveRecord::Migration[5.1]
  def change
    remove_column(:teams, :team_home_id)
    remove_column(:teams, :team_visitor_id)
  end
end
