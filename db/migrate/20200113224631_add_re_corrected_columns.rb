class AddReCorrectedColumns < ActiveRecord::Migration[5.1]
  def change
    add_column(:games, :team_home_id, :integer)
    add_column(:games, :team_visitor_id, :integer)
  end
end
