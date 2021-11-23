class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.integer :overall_exact
      t.integer :overall_fuzzy
      t.integer :overall_points

      t.timestamps
    end
  end
end
