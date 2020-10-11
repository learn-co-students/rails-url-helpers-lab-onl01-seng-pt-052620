class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]
  before_action :set_status, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end

  def activate
    @student.update(active: !@student.active)
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end

    def set_status
      set_student
      if @student.active == true
        @status = "active"
      else
        @status = "inactive"
      end
    end
end