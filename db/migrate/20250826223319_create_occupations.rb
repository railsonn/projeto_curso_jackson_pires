class CreateOccupations < ActiveRecord::Migration[8.0]
  def change
    create_table :occupations do |t|
      t.string :description

      t.timestamps
    end
  end
end
