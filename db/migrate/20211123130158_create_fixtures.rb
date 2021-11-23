class CreateFixtures < ActiveRecord::Migration[6.0]
  def change
    create_table :fixtures do |t|
      t.date :date
      t.integer :home_goals_result
      t.integer :away_goals_result
      t.integer :match_week

      t.timestamps
    end
  end
end
