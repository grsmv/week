## Description:
A simple gem to work with weeks as arrays of date objects. It works with commercial dates (according to http://en.wikipedia.org/wiki/ISO_week_date).

## Usage:

    week(2011, 52).map { |day| p day }
    
    # =>
    # Sun Dec 25 00:00:00 +0200 2011
    # Mon Dec 26 00:00:00 +0200 2011
    # Tue Dec 27 00:00:00 +0200 2011
    # Wed Dec 28 00:00:00 +0200 2011
    # Thu Dec 29 00:00:00 +0200 2011
    # Fri Dec 30 00:00:00 +0200 2011
    # Sat Dec 31 00:00:00 +0200 2011


    # Or you can use it without any parameters:
    # (if todays date is 10, August 2011)

    week.map { |day| p day }
    # Sun Aug 07 00:00:00 +0300 2011
    # Mon Aug 08 00:00:00 +0300 2011
    # Tue Aug 09 00:00:00 +0300 2011
    # Wed Aug 10 00:00:00 +0300 2011
    # Thu Aug 11 00:00:00 +0300 2011
    # Fri Aug 12 00:00:00 +0300 2011
    # Sat Aug 13 00:00:00 +0300 2011


    # Use gem with 1 as third parameter if you want 
    # to have Monday as a first day of the week:

    week(2011, 8, 1).map { |day| p day }


Copyright (c) 2011 Sergey Gerasimov
