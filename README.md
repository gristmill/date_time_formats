# DateTimeFormats

Almost every Rails project I start requires the use of custom formats for outputting Time. It's pretty trivial to add to a project, but I always
forget the constant name for the initializer. It's Time::DATE_FORMATS. I inevitably have to google or look in previous projects. Not a big deal, but nonetheless,
it's unnecessary.

This Gem provides some common formats as well allowing you to define your own in a date_time_formats.yml file.

## Installation

Add this line to your application's Gemfile:

    gem 'date_time_formats'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install date_time_formats

## Usage

DateTimeFormats adds support for common formats to "Time#to_s" method

```ruby
Time.now.to_s(:year)  # => 2012
Time.now.to_s(:slash) # => 1/01/2012
```

DateTimeFormats comes with a default set of formats. You can define your own by adding a config/date_time_formats.yml file to your Rails app.
The syntax is "key: format" like

```yml
# config/date_time_formats.yml
year_and_day: "%Y-%d"
# Usage: Time.now.to_s(:year_and_day)
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
