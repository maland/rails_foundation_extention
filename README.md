# RailsFoundationExtention

useful rails extentions for ZURB's Foundation framework version 5

## Installation

Add this line to your application's Gemfile:

    gem 'rails_foundation_extention', git: 'git://github.com/maland/rails_foundation_extention.git'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails_foundation_extention

**Requires Ruby 1.9.2 or later.**

## Usage

adds following helper methods to your application

### row helper

```erb
<%= r 'your_classes' do %>
  …your content…
<% end %>
```

```html
<div class="row your_classes">
  …your content…
</div>
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request