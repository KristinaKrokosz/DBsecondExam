class CreateFaculties < ActiveRecord::Migration[5.2]
  def change
    create_table :faculties do |t|
      t.integer :facultyID
      t.string :fName
      t.string :lName
      t.string :department
      t.string :email

      t.timestamps
    end
  end
end
