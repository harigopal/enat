require 'enat'
include Enat

every 5, :seconds do
  sleep_time = rand(4)
  puts "#{Time.now.to_f}: Sleeping for #{sleep_time} seconds..."
  sleep sleep_time
  puts "#{Time.now.to_f}: Done sleeping."
end
