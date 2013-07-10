Every Now And Then
==================

It's quite simple, really - it lets you do something every specified interval of time. When supplied with a block, it
yields the iteration count (starts at zero).

It requires 'active_support/time', so as to allow time intervals to be specified as 5.seconds, 6.7.days, etc. The 'every'
method accepts non-zero numeric values (anything that responds to `to_f`).

If the operation inside the block takes longer than the specified interval, then the next iteration will begin
immediately after the last.

To exit, simply break out of the loop.

Examples
========

    require 'enat'

    every 4.2.minutes do |i|
      puts "wheee! i've done this #{i} times!"
      break if i > 5
    end

Installation
============

    $ gem install enat
