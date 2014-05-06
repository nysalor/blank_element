[![Build Status](https://travis-ci.org/nysalor/blank_element.svg?branch=master)](https://travis-ci.org/nysalor/blank_element)

# BlankElement

remove blank or null elements from Array object

## Installation

Add this line to your application's Gemfile:

    gem 'blank_element'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install blank_element

## Usage

```ruby
require 'blank_element'

array = ['battleship', 'cruiser', 'destroyer', ' ']
array.blank_all? # => false
arra.present_any? # => true
array.reject_blank # => ['battleship', 'cruiser', 'destroyer']
array.reject_blank! # => bang method

blank_array = [' ', ' ', ' ']
blank_array.blank_all? # => true
blank_array.present_any? # => false

empty_array = []
empty_array.blank_all? # => true
empty_array.present_any? # => false
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/blank_element/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
