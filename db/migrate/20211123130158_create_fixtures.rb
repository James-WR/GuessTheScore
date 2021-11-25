class CreateFixtures < ActiveRecord::Migration[6.0]
  def change
    create_table :fixtures do |t|
      t.date :date
      t.integer :home_goals_result
      t.integer :away_goals_result
      t.integer :match_day
      t.string  :home_team
      t.string  :away_team

      t.timestamps
    end
  end
end
