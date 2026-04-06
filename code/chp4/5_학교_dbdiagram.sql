
-- dbdigram.io를 위해 수정하기

TABLE professor[
	professor_id int [pk]
	professor_name varchar
	department varchar
	salary numeric
	salary_level numeric
	hire_date date
]

TABLE student[
	student_id int [pk]
	student_name varchar
	major varchar 
]

TABLE course [
	course_id int
	section_id int
	professor_id int
	course_name varchar
	
	indexes{
		(course_id, section_id)[pk]
	}
]

'''
수강
grade | 성적
enrolled_at | 신청일
student_id + course_id | 복합키
'''

CREATE TABLE enrollment[
	student_id int
	course_id int
	grade varchar
	points numeric -- 99,65
	enrolled_at date

	indexes{
		(student_id, course_id)
	}
]


Ref: enrollment.student_id > student.student_id
Ref: course.professor_id > professor.professor_id