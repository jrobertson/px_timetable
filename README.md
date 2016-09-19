# Introducing the px_timetable gem

    require 'px_timetable'

    s =<<EOF
    <?polyrex schema="days[title]/day[title]/klass[times,room,title,tutor]" format_mask[1]="[!times] [!room] [!title] # [!tutor]"?>
    title: Super College HNC Life Skills Timetable

    Monday
      9:00-12:15 5-06 Building FANs # Billy
      13:15-15:15 2-01 Hairdressing # Tam

    Tuesday
      9:00-11:15 2-01 Developing skills # Bob
      11:15-13:15 5-06 Fun analysis # Billy
      14:15-16:30 1-02 Planning for reality # Maureen

    Wednesday
      9:00-13:15 2-09 Engineering social media # Tam
      13:15-14:15 3-04 Learning tricks # Jock

    EOF

    File.write '/tmp/timetable.txt', s

    timetable = PxTimetable.new '/tmp/timetable.txt'
    puts timetable

<pre>
Monday
  9:00-12:15 5-06 Building FANs # Billy
  13:15-15:15 2-01 Hairdressing # Tam
Tuesday
  9:00-11:15 2-01 Developing skills # Bob
  11:15-13:15 5-06 Fun analysis # Billy
  14:15-16:30 1-02 Planning for reality # Maureen
Wednesday
  9:00-13:15 2-09 Engineering social media # Tam
  13:15-14:15 3-04 Learning tricks # Jock

</pre>

    puts timetable.today

<pre>
9:00-12:15 5-06 Building FANs # Billy
13:15-15:15 2-01 Hairdressing # Tam

</pre>

    t = Time.parse('09:00 19th Sep 2015')
    puts timetable.now(t)

<pre>9:00-12:15 5-06 Building FANs # Billy</pre>

    puts timetable.next(t)

<pre>13:15-15:15 2-01 Hairdressing # Tam</pre>

    puts timetable.tomorrow.records.first

<pre>9:00-11:15 2-01 Developing skills # Bob</pre>


## Resources

* px_timetable https://rubygems.org/gems/px_timetable

px_timetable timetable polyrex
