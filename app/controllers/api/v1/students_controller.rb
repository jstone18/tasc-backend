class Api::V1::StudentsController < ApplicationController
  before_action :set_student, only: [:show, :update, :destroy]

  def index
    @students = Student.all

    render json: @students
  end

  def show
    render json: @student
  end

  def create
    @student = Student.new(student_params)

    if @student.save
      render json: @student
    else
      render json: {status: 500, message: "Unable to create student."}
    end
  end

  def update
    if @student.update(student_params)
      render json: @student
    else
      render json: {status: 500, message: "Unable to update student."}
    end
  end

  def destroy     
    if @student.destroy
        render json: @student.id
    else
        render json: {status: 500, message: 'Student cannot be deleted'}
    end
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end

    def student_params
      params.require(:student).permit(
        :first_name, :last_name, :age, :room_id, :street_address, :city, 
        :state, :zip, :dob, :allergies, :medications, :dr_name, :dr_phone, 
        :contact1_name, :contact1_phone, :contact1_relationship, :contact2_name, 
        :contact2_phone, :contact2_relationship, :contact3_name, :contact3_phone, 
        :contact3_relationship
      )
    end
end
