class RailcarController < ApplicationController
  def index
    @siding = RailSiding.new(DateTime.current)
  end
end
