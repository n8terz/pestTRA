class SchedulesController < ApplicationController
  def index
    @start_hour = 6
    @end_hour   = 16
    @technicians = Technician.all
  end
end
