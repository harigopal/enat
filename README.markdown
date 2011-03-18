Every Now And Then
==================

    require 'enat'
    include Enat
    
    every :minute do
      puts "foo"
    end
    
    every 9.76, :seconds do
      puts "whoopeee!"
    end

Full Spec
---------

    every [[n],] [:second(s), :minute(s), :hour(s), :day(s)] do
      # something
    end

Notes
-----

If the operation inside the block takes longer than the specified interval, then the next iteration will begin immediately after the last.
