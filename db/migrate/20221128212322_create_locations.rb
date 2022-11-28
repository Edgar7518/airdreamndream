class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.references :dream, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :comment
      t.integer :status

      t.timestamps
    end
  end
end
