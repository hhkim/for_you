# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

student1 = Student.create(name: '김학생')
student2 = Student.create(name: '이학생')
student3 = Student.create(name: '박학생')
student4 = Student.create(name: '최학생')

lecture1 = Lecture.create(name: '축구', lesson_time_number: 4)
lecture2 = Lecture.create(name: '영어', lesson_time_number: 8)

# 축구에 4명 수강신청
lecture1.students << student1
lecture1.students << student2
lecture1.students << student3
lecture1.students << student4

# 영어에 2명 수강신청
lecture2.students << student3
lecture2.students << student4

