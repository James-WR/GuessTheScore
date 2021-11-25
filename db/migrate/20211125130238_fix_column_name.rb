class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :fixtures, :match_week, :match_day
  end
end
