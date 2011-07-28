require 'active_support/time'
require 'enat/import'

every(2.seconds) do |iteration|
  puts "Hello no. #{iteration}!"
end