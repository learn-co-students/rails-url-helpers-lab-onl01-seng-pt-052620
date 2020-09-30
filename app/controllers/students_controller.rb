class StudentsController < ApplicationController
  before_action :set_student, only: [:show,  :activate]
  
  def index
    @students = Student.all
  end

  def show
    set_student
    student_path(@student)
  end

  def activate
    set_student.active ? @student.active = false : @student.active = true
    @student.save
    redirect_to student_path(@student)
  end

  

  private

  def set_student
    @student = Student.find(params[:id])
  end

  # def status

    
  #   @student.active ? print "Active" : print "Inactive"
  # end

    
end