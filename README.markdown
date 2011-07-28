Every Now And Then
==================

    require 'enat/import'
    
    every 10 do
      puts "foo"
    end
    
    require 'active_support/time'

    every 4.2.minutes do
      puts "wheee!"
    end

Installation
------------

$ bundle install
$ gem build enat.gemspec
$ gem install enat

Notes
-----

If the operation inside the block takes longer than the specified interval, then the next iteration will begin immediately after the last.
