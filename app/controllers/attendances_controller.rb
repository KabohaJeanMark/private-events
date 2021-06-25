class AttendancesController < ApplicationController
  def new
    @attendance = Attendance.new
  end

  def create
    @attendance = Attendance.new(attendance_params)
  end
  
  private

  def attendance_params
    params.require(:attendance).permit(:attendee_id, :event_id)
  end


end
