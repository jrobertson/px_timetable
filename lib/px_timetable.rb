#!/usr/bin/env ruby

# file: px_timetable.rb


require 'polyrex'
require 'chronic_between'



class PxTimetable

  def initialize(filename_txt)
    @px = Polyrex.new
    @px.import filename_txt
  end
  
  def days()
    @px.records
  end

  def next(t=Time.now)

    classes_today = self.today()
    return unless classes_today

    classes = classes_today.records    

    session = classes.detect do |klass|
      ChronicBetween.new(klass.times).within? t
    end

    i = classes.index(session)

    if i and i < classes.length then
      classes[i+1]
    end

  end

  def now(t=Time.now)

    classes_today = self.today()
    return unless classes_today

    classes = classes_today.records    

    classes.detect do |klass|
      ChronicBetween.new(klass.times).within? t
    end
  end

  def to_s()
    @px.to_s(header: false)
  end

  def today(d=Date.today)
    
    @px.find_by_day_title Date::DAYNAMES[d.wday]

  end
  
  def tomorrow(d=Date.today+1)
    
    @px.find_by_day_title Date::DAYNAMES[(d).wday]

  end

  
end
