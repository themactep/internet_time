#! /usr/bin/env ruby
#--
# Swatch Internet Time extension to Ruby Time class
# Copyright 2009 Paul Philippov <themactep@gmail.com>
#
# This program is free software. It may be redistributed and/or modified
# under the terms of the New BSD licence.
#
# $Id: beats.rb,v 1.0.2 2010/04/07 05:03:03 themactep Exp $
#++

# The library add Swatch Internet Time capability to the standard Ruby Time class.
# Its usage is very straightforward:
#
#   require 'internet_time'
#   Time.now.to_beats  # => @234
#
class Time #:nodoc:#

  SECOND_PER_BEAT = 86.4  # Amount of seconds in a single .beat
  BMT_OFFSET_SEC = 3600   # Biel Mean Time offset to UTC in seconds

  # Time in Biel Mean Time (UTC+1)
  def bmt
    self.utc + BMT_OFFSET_SEC
  end

  # Time in .beats
  def to_beats
    time = bmt
    "@%03d" % [ ((time.hour * 60 + time.min) * 60 + time.sec) / SECOND_PER_BEAT ]
  end
end

# vim: ts=2
