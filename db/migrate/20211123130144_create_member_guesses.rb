class CreateMemberGuesses < ActiveRecord::Migration[6.0]
  def change
    create_table :member_guesses do |t|
      t.integer :home_goals_guess
      t.integer :away_goals_guess

      t.timestamps
    end
  end
end
