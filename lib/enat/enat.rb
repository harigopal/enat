# Every Now And Then
module Enat
  # Yields to block every supplied interval
  #
  # @param [Fixnum, Float] interval_in_seconds minimum time interval between yields
  def every(interval_in_seconds)
    interval_in_seconds = interval_in_seconds.to_f

    unless interval_in_seconds > 0
      raise EnatError, "Interval must be non-zero"
    end

    iteration = 0

    loop do
      start_time = Time.now.to_f

      yield iteration
      iteration += 1

      time_elapsed = Time.now.to_f - start_time
      if time_elapsed >= interval_in_seconds
        next
      else
        sleep(interval_in_seconds - time_elapsed)
      end
    end
  end
end
