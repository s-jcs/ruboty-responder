# Ruboty::Keywords

ruboty extension to have the bot respond to specific keywords stored in a json file (currently in the gem).
ruboty will respond without having to delcare a specific keyword.

### ISSUES

- matching is done with the entire line of text, so if the string contains the keyword (i.e. keyword is foo, string is foobar), ruboty will respond. This isn't a big issue if it were in Japanese (no white spaces inbetween words), but it poses a problem for English.
  - Will have to determine if string is english or japanese, and decide to match keywords with whitespaces if english.

Put your Ruby code in the file `lib/ruboty/keywords`. To experiment with that code, run `bin/console` for an interactive prompt.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ruboty-keywords'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ruboty-keywords

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/ruboty-keywords. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

