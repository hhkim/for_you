class CreateStudentAttendances < ActiveRecord::Migration
  def change
    create_table :student_attendances do |t|
      t.references :student, index: true
      t.references :lecture, index: true
      t.integer :lesson_time
      t.boolean :present

      t.timestamps
    end
  end
end
