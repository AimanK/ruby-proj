=begin 
    A service class designed to faciliate the relationship between students
    and their courses.
=end
class EnrollmentService
    def initialize
        @enrollments = {}
    end



# Enrolls a student in a give course
def enroll(student, course)
    @enrollments[course] ||= []
    @enrollments[course] << student unless @enrollments[course].include?(student) || !able_to_enroll?(student, course)
end


# Boolean check if a given student is enrolled in a course
def enrolled_in?(student, course)
    return false unless @enrollments[course]

    @enrollments.each do |course, students|
        if students.include?(student)
            return true
        else
            return false
        end
    end
end



# Returns all courses a given student is enrolled in
def enrolled_courses(student)
    @enrollments.select { |course, students| students.include?(student) }.keys
end



# private
private

# method that checks if a student is in the right grade to enroll
def able_to_enroll?(student, course)
    if student.grade == course.course_grade
        return true
    else
        return false
    end
end

end