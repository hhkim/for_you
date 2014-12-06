class Lecture < ActiveRecord::Base
  has_many :students, through: :student_lectures
  has_many :student_lectures
  
  has_many :student_attendances
end