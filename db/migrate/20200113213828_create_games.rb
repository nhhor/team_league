class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.column(:team_home_id, :string)
      t.column(:team_visitor_id, :string)
      t.column(:team_home_score, :integer)
      t.column(:team_visitor_score, :integer)
      t.column(:game_date, :datetime)

      t.timestamps()
    end
  end
end
