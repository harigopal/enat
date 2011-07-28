require 'active_support/time'
require 'enat/import'

every(2.seconds) do |iteration|
  print "Hello no. #{iteration}!"
end