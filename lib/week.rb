  require 'date'

  # Simple addition for days-processing simplification
  class Numeric
    def days
      self * 60 * 60 * 24
    end
  end

  # TODO: - write RDoc documentation
  #       - empty values as parameters
  class Week

    def initialize(year, week, fday = 0)
      @year, @week, @fday = year, week, fday
    end

    class << self
      def nmonth year
        [31, (Date.new(year, 1, 1).leap? ? 29 : 28), 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
      end
    end

    def days
      tmp_wday = @week * 7

      common_days, month_number = 0, 0

      Week.nmonth(@year).each_with_index do |month, number|
        if (common_days..(common_days + month)).member?(tmp_wday)
          month_number = number
          break
        end
        common_days += month
      end
      
      tmp_first_day = tmp_wday - common_days
      
      # fixing day number for calculate first week of the year
      tmp_first_day = tmp_first_day == 0 ? 1 : tmp_first_day
      
      # fixing problem with last week in month
      if tmp_first_day == -1
        month_number = 11
        tmp_first_day = Week.nmonth(@year)[month_number] - 2
      end
      
      # getting week listing
      days = []
      d = Time.local(@year, month_number + 1, tmp_first_day)
      first_day = d - d.wday.days
      @fday.upto(@fday + 6) do |day|
        days << Time.at(first_day + day.days)
      end

      days
    end
  end

  # Simplier API for Week class usage
  # TODO: made it throuh hash
  @today = Date.today
  def week(year = @today.year, week = @today.cweek, fday = 0)
    Week.new(year, week, fday).days
  end
