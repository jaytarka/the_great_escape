# TheGreatEscape
My first gem, the great escape. Seeing if your string contains SGR or other ASCII codes can be tricky, as when you print them to the screen they change the color/formatting of your terminal whether you want them to our not! Dumping results in more characters you have to either escape or sift through by eye. All the_great_escape does is escape strings that contain special sequences such as SGR parameters.

# Installation
1. Add this line to your application's Gemfile:

```ruby
gem 'the_great_escape'
```

1. cd into your project's root:
```
$ cd my_project
```
1. execute:
```
$ bundle install
```
## Usage

1. Require the_great_escape at the top of the file
```ruby
require 'the_great_escape'
```

1. And now use!
```ruby
require 'the_great_escape'

string = "hell \e[31mworld"
puts string # prints hell world to your screen. But everything is now in red! All you wanted to do was test your string contained an SGR code and now your terminal has been possessed!
puts string.dump # prints "hell \e[31mworld", complete with quotations. This can be confusing for newbies who are trying to write Regexes for strings containing SGR codes (such as myself)

escape_puts string # prints hell \e[31mworld Nice. Now you can see why your regex isn't working :P

# Using TheGreatEscape's escape method over dump does have a distinct advantage. It doesn't invalidate your code:
original_string = "hell \e[31m"

string = original_string.dump
puts string # prints "hell \\e[31m"
puts string.scan /\\e\[\d+m$/ # [] scan returns an empty array because string ends in a " not an m thanks to the in-place dump

string = escape original_string
puts string # prints hell \\e[31m which is easier to read
puts string.scan /\\e\[\d+m$/ # ["\\e[31m"] scan returns the SGR code at the end of string because string still ends in an m, despite the in-place escape
##
puts "\e[0" # reset your terminal to its default style if you run this code.
```
## Methods:
| Method        | Example Usage | Description |
| ------------- | ---------------------- | --- |
| escape  STRING |  escaped = escape "hell \e[31m" | escapes the string passed to it so it can be safely printed later. Does not invalidate the string |
| escape_puts STRING | escape_puts "hell \e[31m"  | escapes the string passed to it and prints it immediately to the console |

# Contributing
Okay, I'm pretty new to Ruby and utterly new to git so I've created this to learn about string escapement, git collaboration and how to package, release and install gems. Regardless, to contribute:

1. Fork it ( https://github.com/[my-github-username]/the_great_escape/fork )
1. Create your feature branch (`git checkout -b my_new_feature`)
1. Commit your changes (`git commit -am 'Add my_new_feature'`)
1. Push to the branch (`git push origin my_new_feature`)
1. Create a new Pull Request
