[![Build Status](https://secure.travis-ci.org/grsmv/week.png?branch=master)](http://travis-ci.org/grsmv/week)

## Description:
A simple gem to work with weeks as arrays of date objects. It works with commercial dates (according to http://en.wikipedia.org/wiki/ISO_week_date).

## Usage:

__Simple:__

```ruby
week(2011, 52).map { |day| p day }

# =>
# Sun Dec 25 00:00:00 +0200 2011
# (...)
# Sat Dec 31 00:00:00 +0200 2011
```


__Without any parameters:__

```ruby
week.map { |day| p day }
```


__With Monday as first day of the week:__  
(1 as third parameter)

```ruby
week(2011, 8, 1).map { |day| p day }
```


__Patch for standart library Date class:__

```ruby
Date.new(2011, 12, 25).week
```

Copyright (c) 2011 Sergey Gerasimov
