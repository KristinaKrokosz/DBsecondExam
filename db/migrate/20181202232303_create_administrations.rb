class CreateAdministrations < ActiveRecord::Migration[5.2]
  def change
    create_table :administrations do |t|
      t.integer :adminID
      t.string :firstname
      t.string :lastname
      t.string :title
      t.string :extension

      t.timestamps
    end
  end
end
