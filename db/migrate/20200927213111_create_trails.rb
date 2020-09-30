class CreateTrails < ActiveRecord::Migration[6.0]
  def change
    create_table :trails do |t|
      t.string :name
      t.string :difficulty
      t.integer :rating
      t.integer :mountain_id

      t.timestamps
    end
  end
end
