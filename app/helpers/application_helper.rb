module ApplicationHelper
  def present_link_text(student_attendance)  
    if student_attendance == nil || student_attendance.present == nil
      image_tag('n.png')
      "빈칸"
    elsif student_attendance.present == true
      image_tag('o.png')
    elsif student_attendance.present == false
      "결석"
    end
  end 
end
