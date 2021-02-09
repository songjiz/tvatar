# Tvatar

  Simple avatar generator with letters.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tvatar'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install tvatar

## Usage

```ruby
font_family = ["Noto Sans", "Helvetica Neue", "Helvetica", "sans-serif"]
font_size   = 100
radius      = 150
width       = 300
height      = 300
class_names = ['logo']

avatar = Tvatar.new(text: 'Ruby', background: '#CC342D', font_family: font_family, font_size: font_size, radius: 150, class_names: class_names)
avatar.width # => 300
avatar.height # => 300
avatar.font_family # => "Noto Sans, Helvetica Neue, Helvetica, sans-serif"
avatar.to_svg
# => "<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"1.1\" viewBox=\"0 0 300 300\" class=\"logo\"> <g> <rect width=\"100%\" height=\"100%\" rx=\"150\" fill=\"#CC342D\"></rect> <text xmlns=\"http://www.w3.org/2000/svg\" x=\"50%\" y=\"50%\" dy=\"0.35em\" text-anchor=\"middle\" fill=\"#ffffff\" font-family=\"Noto Sans, Helvetica Neue, Helvetica, sans-serif\" font-size=\"100\" font-weight=\"bold\" letter-spacing=\"\">Ruby</text> </g> </svg>"

avatar = Tvatar.new(text: 'Rails', background: '#c00', font_family: font_family, font_size: font_size, radius: 150, class_names: class_names)
avatar.to_svg
# => "<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"1.1\" viewBox=\"0 0 300 300\" class=\"logo\"> <g> <rect width=\"100%\" height=\"100%\" rx=\"150\" fill=\"#c00\"></rect> <text xmlns=\"http://www.w3.org/2000/svg\" x=\"50%\" y=\"50%\" dy=\"0.35em\" text-anchor=\"middle\" fill=\"#ffffff\" font-family=\"Noto Sans, Helvetica Neue, Helvetica, sans-serif\" font-size=\"100\" font-weight=\"bold\" letter-spacing=\"\">Rails</text> </g> </svg>"

# Rails application
ApplicationController.render(avatar)
# => "<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"1.1\" viewBox=\"0 0 300 300\" class=\"logo\"> <g> <rect width=\"100%\" height=\"100%\" rx=\"150\" fill=\"#c00\"></rect> <text xmlns=\"http://www.w3.org/2000/svg\" x=\"50%\" y=\"50%\" dy=\"0.35em\" text-anchor=\"middle\" fill=\"#ffffff\" font-family=\"Noto Sans, Helvetica Neue, Helvetica, sans-serif\" font-size=\"100\" font-weight=\"bold\" letter-spacing=\"\">Rails</text> </g> </svg>"

# config/initializers/tvatar.rb
Tvatar.configure do |config|
  config.width = 300
  config.height = 300
  config.radius = 0
  config.color = '#ffffff'
  config.latter_spacing = 5
  config.font_weight = 'bold'
  config.font_size = 156
  config.backgrounds = ["#03045E", "#247BAO", "#1C2541", "#F95738", "#1A936F"]
  config.font_family = ["Noto Sans", "Helvetica Neue", "Helvetica", "sans-serif"]
  config.class_names = ["avatar"]
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/songjiz/tvatar.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
