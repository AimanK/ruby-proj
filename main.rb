# main.rb

# Require all necessary files
require_relative 'student'
require_relative 'course'
require_relative 'enrollment_service'

# Initialize objects
alice = Student.new("Alice", "001", "Freshman")
bob = Student.new("Bob", "002", "Junior")

junior_math = Course.new("Mathematics", "Junior", "Mr. Smith")
freshman_history = Course.new("History", "Freshman", "Mrs. Johnson")

enrollment_service = EnrollmentService.new

enrollment_service.enroll(alice, freshman_history)

enrollment_service.enroll(bob, junior_math)

puts enrollment_service.enrolled_in?(alice, freshman_history)

puts enrollment_service.enrolled_in?(bob, junior_math)

puts enrollment_service.enrolled_courses(alice)

puts enrollment_service.enrolled_courses(bob)