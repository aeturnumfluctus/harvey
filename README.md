<img src="logo/logo.png">

# Harvey

A simple wrapper around [eSpeak](http://espeak.sourceforge.net/).

## Installation

Install `espeak` (Linux):

```
$ sudo apt-get install espeak
```

Add this line to your application's Gemfile:

```ruby
gem 'harvey'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install harvey

## Usage

Hear Harvey. Love Harvey.

```ruby
Harvey
  .with_speech(
    before: "About to work on something super intensive..",
    after: "Whew.. that was exhausting"
  ) do
    sleep 100
  end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/harvey.

## Other
- [espeak docs](http://espeak.sourceforge.net/commands.html)
- [logo source](https://pbs.twimg.com/profile_images/816009717965320192/KZrCjncG_400x400.jpg)

