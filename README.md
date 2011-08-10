=== Description:
A simple gem to work with weeks as arrays of days numbers. It works with commercial dates (according to http://en.wikipedia.org/wiki/ISO_week_date).

=== Usage:

    week(2011, 52).map { |day| p day }
    # =>
    # Sun Dec 25 00:00:00 +0200 2011
    # Mon Dec 26 00:00:00 +0200 2011
    # Tue Dec 27 00:00:00 +0200 2011
    # Wed Dec 28 00:00:00 +0200 2011
    # Thu Dec 29 00:00:00 +0200 2011
    # Fri Dec 30 00:00:00 +0200 2011
    # Sat Dec 31 00:00:00 +0200 2011

Copyright (c) 2011 Sergey Gerasimov
