class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.integer :user_id
      t.integer :mountain_id
      t.date :date

      t.timestamps
    end
  end
end
