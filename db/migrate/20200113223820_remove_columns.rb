class RemoveColumns < ActiveRecord::Migration[5.1]
  def change
    remove_column(:games, :team_home_id)
    remove_column(:games, :team_visitor_id)
  end
end
