class CreateStudentLectures < ActiveRecord::Migration
  def change
    create_table :student_lectures do |t|
      t.references :student, index: true
      t.references :lecture, index: true

      t.timestamps
    end
  end
end
