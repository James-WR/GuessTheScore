class CreateCommunities < ActiveRecord::Migration[6.0]
  def change
    create_table :communities do |t|
      t.string :community_name
      t.string :join_code

      t.timestamps
    end
  end
end
