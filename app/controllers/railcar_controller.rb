class RailcarController < ApplicationController
  def index
    @siding = RailSiding.new(DateTime.current)
    @report = RailSidingReport.new(1.day.ago.beginning_of_day, DateTime.current)
  end
end
