class CreateEnrollments < ActiveRecord::Migration[5.1]
  def change
    create_table :enrollments do |t|
      t.integer :enrollNum
      t.string :enrollType
      t.references :section, foreign_key: true
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
