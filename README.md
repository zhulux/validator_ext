# ValidatorExt

some extra validators for active_record/validations

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'validator_ext'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install validator_ext

## Usage

use the gem like this:
```ruby
validates :some_email, email: true
```
it validates the string with the format `/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i`
```ruby
validates :some_telephone, telephone: true
```
it validates the string with the format `/\A(0|86|17951)?[0-9]{11}\z/i`

``
And you must require `gem json-schema` in your gemfile before the usage of json_schema_validator,
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/forkycoin/validator_ext. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.



## License

Authored by [forkycoin](https://github.com/forkycoin). Copyright (c) 2015 [ZhuluX Team](https://github.com/zhulux/).

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

