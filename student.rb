class Student

 attr_accessor :name, :student_id, :grade

 VALID_GRADES = ["Freshman", "Sophomore", "Junior", "Senior"].freeze

    def initialize(name, student_id, grade)
        @name = name
        @student_id = student_id
        self.grade = grade
    end


    # Confirm that grade is valid
    def grade=(grade)
        if VALID_GRADES.include?(grade)
            @grade = grade
        else 
            raise ArgumentError, "Invalid grade. Must one of: #{VALID_GRADES.join(', ')}"
        end
    end



    # Return all classes that student is enrolled in




    # Boolean check if a student is enrolled in a given class?


    




end