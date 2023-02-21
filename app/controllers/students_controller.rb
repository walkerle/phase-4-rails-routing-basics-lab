class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students, status: 200
  end
  
  def grades
    grades = Student.all.order(grade: :desc)
    render json: grades, status: :ok
  end

  def highest_grade
    highest_grade = Student.all.order(grade: :desc).first
    render json: highest_grade, status: :ok
  end

end
