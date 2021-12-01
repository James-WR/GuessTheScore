class AddColumnToLeagues < ActiveRecord::Migration[6.0]
  def change
    add_column :leagues, :match_day, :integer
  end
end
