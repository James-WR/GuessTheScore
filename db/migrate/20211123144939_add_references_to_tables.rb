class AddReferencesToTables < ActiveRecord::Migration[6.0]
  def change
    add_reference :communities, :owner, foreign_key: { to_table: :users }
    add_reference :communities, :league, foreign_key: true
    add_reference :members, :user, foreign_key: true
    add_reference :members, :community, foreign_key: true
    add_reference :teams, :league, foreign_key: true
    add_reference :member_guesses, :member, foreign_key: true
    add_reference :member_guesses, :fixture, foreign_key: true
    add_reference :fixtures, :home_team, foreign_key: { to_table: :teams }
    add_reference :fixtures, :away_team, foreign_key: { to_table: :teams }
  end
end
