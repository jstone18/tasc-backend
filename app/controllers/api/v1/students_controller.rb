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
        :firstName, :lastName, :age, :room_id, :streetAddress, :city, 
        :state, :zip, :dob, :allergies, :medications, :drName, :drPhone, 
        :contactOneName, :contactOnePhone, :contactOneRelationship, :contactTwoName, 
        :contactTwoPhone, :contactTwoRelationship, :contactThreeName, :contactThreePhone, 
        :contactThreeRelationship
      )
    end
end
