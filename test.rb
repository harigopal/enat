require_relative 'lib/enat'

start_time = Time.now

every 5.seconds do |iteration|
  time_since_start = (Time.now.to_f - start_time.to_f).round(2)
  drift = (time_since_start - (iteration * 5)).round(2)
  puts "Starting new iteration. Time since start: #{time_since_start}s (Drift: #{drift}s)"
  sleep_time = rand(5)
  puts "#{Time.now.to_f}: Sleeping for #{sleep_time} seconds... (Iteration #{iteration})"
  sleep sleep_time
  puts "#{Time.now.to_f}: Done sleeping."
end
