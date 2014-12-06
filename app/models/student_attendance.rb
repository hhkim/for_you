class StudentAttendance < ActiveRecord::Base
  belongs_to :student
  belongs_to :lecture
  
  def change_present!
    if self.present == nil
      self.present = true
    elsif self.present == true
      self.present = false
    elsif self.present == false
      self.present = nil
    end
    
    self.save
  end  
end
