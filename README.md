[![Build Status](https://secure.travis-ci.org/grsmv/week.png?branch=master)](http://travis-ci.org/grsmv/week)

## Description:
A simple gem to work with weeks as arrays of date objects. It works with commercial dates (according to http://en.wikipedia.org/wiki/ISO_week_date).

## Usage:

*Simple:*

```ruby
week(2011, 52).map { |day| p day }

# =>
# Sun Dec 25 00:00:00 +0200 2011
# (...)
# Sat Dec 31 00:00:00 +0200 2011
```


*Without any parameters:*
(for example todays date is 10, August 2011):

```ruby
week.map { |day| p day }

# =>
# Sun Aug 07 00:00:00 +0300 2011
# (...)
# Sat Aug 13 00:00:00 +0300 2011
```


*With Monday as first day of the week:*
(1 as third parameter)

```ruby
week(2011, 8, 1).map { |day| p day }
```


*Patch for standart library Date class:*

```ruby
Date.new(2011, 12, 25).week

# =>
# Sun Dec 25 00:00:00 +0200 2011
# (...)
# Sat Dec 31 00:00:00 +0200 2011
```

Copyright (c) 2011 Sergey Gerasimov
