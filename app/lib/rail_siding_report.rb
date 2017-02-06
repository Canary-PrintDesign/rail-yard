class RailSidingReport
  attr_accessor :from
  attr_accessor :to

  def initialize(from, to)
    @from = from
    @to = to
  end

  def move_logs
    @move_logs ||= CarMoveLogEntry.where("created_at BETWEEN ? AND ?", from, to)
  end

  def temp_logs
    @temp_logs ||= CarTempLogEntry.where("created_at BETWEEN ? AND ?", from, to)
  end

  def line_chart
    temp_logs.group_by { |l| l.railcar.number }.
      map do |number, log_entries|
        { name: number, data: log_entries.map(&:chart_point).to_h }
      end
  end
end
