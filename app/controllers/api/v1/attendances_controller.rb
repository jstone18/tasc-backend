class Api::V1::AttendancesController < ApplicationController
  before_action :set_attendance, only: [:show, :update, :destroy]
  before_action :set_student

  def index
    @attendances = @student.attendances

    render json: @attendances
  end

  def show
    render json: @attendance
  end

  def create
    @attendance = @student.attendances.new(attendance_params)

    if @attendance.save
      render json: @student 
    else
      render json: {status: 500, message: "Unable to create attendance."}
    end
  end

  def update
    if @attendance.update(attendance_params)
      render json: @attendance
    else
      render json: {status: 500, message: "Unable to update attendance."}
    end
  end

  def destroy
    @attendance.destroy
  end

  private

    def set_attendance
      @attendance = Attendance.find(params[:id])
    end

    def set_student
      @student = Student.find(params[:student_id])
    end

    def attendance_params
      params.require(:attendance).permit(:check_in, :student_id)
    end
end
