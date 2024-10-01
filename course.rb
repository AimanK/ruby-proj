class Course
    attr_accessor :course_name, :course_grade, :course_teacher

    def initialize(course_name, course_grade, course_teacher)
        @course_name = course_name
        @course_grade = course_grade
        @course_teacher = course_teacher
    end
end