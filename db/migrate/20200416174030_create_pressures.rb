class CreatePressures < ActiveRecord::Migration[5.1]
  def change
    create_table :pressures do |t|
      t.integer :systolic
      t.integer :diastolic

      t.timestamps
    end
  end
end
