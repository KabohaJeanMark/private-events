class AttendancesController < ApplicationController
  def new
    @attendance = Attendance.new
  end

  def create
    @attendance = Attendance.new(attendance_params)
    if @attendance.save
      redirect_to @attendance
    else
      render :new
    end
  end

  def show
    @attendance = Attendance.find(params[:id])
  end

  private

  def attendance_params
    params.require(:attendance).permit(:attendee_id, :event_id)
  end
end
