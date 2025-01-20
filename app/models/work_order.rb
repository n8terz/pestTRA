class WorkOrder < ApplicationRecord
  belongs_to :technician
  belongs_to :location

  def end_time
    start_time + duration.minutes
  end
end
