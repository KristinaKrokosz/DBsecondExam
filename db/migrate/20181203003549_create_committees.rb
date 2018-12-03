class CreateCommittees < ActiveRecord::Migration[5.2]
  def change
    create_table :committees do |t|
      t.integer :committeeID
      t.string :comitname
      t.integer :facultyID
      t.string :meetday

      t.timestamps
    end
  end
end
