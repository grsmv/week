[![Build Status](https://secure.travis-ci.org/grsmv/week.png?branch=master)](http://travis-ci.org/grsmv/week)

## Description:
A simple gem to work with weeks as arrays of date objects. It works with commercial dates (according to http://en.wikipedia.org/wiki/ISO_week_date).

## Usage:

    week(2011, 52).map { |day| p day }
    
    # =>
    # Sun Dec 25 00:00:00 +0200 2011
    # (...)
    # Sat Dec 31 00:00:00 +0200 2011


    # Or you can use it without any parameters:
    # (if todays date is 10, August 2011)

    week.map { |day| p day }

    # =>
    # Sun Aug 07 00:00:00 +0300 2011
    # (...)
    # Sat Aug 13 00:00:00 +0300 2011


    # Use gem with 1 as third parameter if you want 
    # to have Monday as a first day of the week:

    week(2011, 8, 1).map { |day| p day }

    # Also there is monkey patch for standart library Date class, 
    # with wich you can sumply do this:

    Date.new(2011, 12, 25).week

    # =>
    # Sun Dec 25 00:00:00 +0200 2011
    # (...)
    # Sat Dec 31 00:00:00 +0200 2011


Copyright (c) 2011 Sergey Gerasimov
