class Lecture < ActiveRecord::Base
  has_many :students, through: :student_lectures
  has_many :student_lectures
  
  has_many :student_attendances

def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |lecture|
        csv << lecture.attributes.values_at(*column_names)
      end
    end
  end
end