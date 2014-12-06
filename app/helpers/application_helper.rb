module ApplicationHelper
  def present_link_text(student_attendance)  
    if student_attendance == nil || student_attendance.present == nil
      '빈칸'
    elsif student_attendance.present == true
      '출석'
    elsif student_attendance.present == false
      '결석'
    end
  end 
end
