module Enat

  class EnatException < StandardError; end

  def every(first, second=nil)
    if second.nil?
      period = "#{first}".downcase
      value = 1.0
    else
      period = "#{second}".downcase
      value = first
    end

    unless value.is_a? Fixnum or value.is_a? Float
      raise EnatException, "Value, when specified, must be an positive integer (or float) between 1 and 60."
    end

    # If 's' is the last character in period, then remove it.
    period = period[0, period.length - 1] if period[-1, 1] == 's'

    unless ["second", "minute", "hour", "day"].include? period
      raise EnatException, "Period must be one of 'second', 'minute', 'hour', or 'day'."
    end

    unless (1..60).include? value
      raise EnatException, "Value must be an integer between 1 and 60."
    end

    allowed_time = case period
      when "second" then value
      when "minute" then value * 60
      when "hour" then value * 60 * 60
      when "day" then value * 60 * 60 * 24
    end

    iteration = 0

    loop do
      start_time = Time.now.to_f

      yield iteration
      iteration += 1

      time_elapsed = Time.now.to_f - start_time
      if time_elapsed >= allowed_time
        next
      else
        sleep(allowed_time - time_elapsed)
      end
    end
  end
end
