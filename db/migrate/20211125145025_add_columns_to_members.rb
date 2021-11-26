class AddColumnsToMembers < ActiveRecord::Migration[6.0]
  def change
    add_column :members, :weekly_exact, :integer
    add_column :members, :weekly_fuzzy, :integer
    add_column :members, :weekly_points, :integer
  end
end
