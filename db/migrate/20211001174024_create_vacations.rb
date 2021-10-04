class CreateVacations < ActiveRecord::Migration[6.1]
  def change
    create_table :vacations do |t|
      t.integer :traveler_id
      t.integer :country_id
      t.boolean :favorite, default: false

      t.timestamps
    end
  end
end
