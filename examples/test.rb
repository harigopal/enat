require_relative '../lib/enat'

every 2.seconds do |iteration|
  puts "Hello no. #{iteration}!"
end