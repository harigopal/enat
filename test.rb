require_relative 'lib/enat'

every 5.seconds do |iteration|
  sleep_time = rand(5)
  puts "#{Time.now.to_f}: Sleeping for #{sleep_time} seconds... (Iteration #{iteration})"
  sleep sleep_time
  puts "#{Time.now.to_f}: Done sleeping."
end
