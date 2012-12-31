class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.datetime :date_of_birth
      t.string :hair_color
      t.string :eye_color
      t.integer :height
      t.integer :weight
      t.string :sex

      t.timestamps
    end
  end
end
