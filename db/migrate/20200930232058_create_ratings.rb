class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.integer :value
      t.integer :trail_id

      t.timestamps
    end
  end
end
