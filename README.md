= CombustionTest

```
rvm use ruby-2.2.3
rvm gemset create combustion_test
rvm gemset use combustion_test
gem install bundler -v 1.11.2
gem install rails -v 4.2.2

rails plugin new combustion_test --mountable -T --dummy-path=spec/dummy
cd combustion_test
rm -rf spec/dummy
```

Add following section to Gemfile:

    group :development do
      gem 'combustion', '~> 0.5.4'
      gem 'factory_girl_rails', '~> 4.0', :require => false
      gem 'rspec-rails', '~> 3.0'
      gem 'capybara-rails', require: false
      gem 'capybara-webkit', require: false
      gem 'shoulda-matchers', require: false
    end

```
Bundle

rails generate rspec:install
```

Add the following to the top of spec/spec_helper.rb

    require 'rubygems'
    require 'bundler/setup'
    require 'combustion'
    require 'capybara/rspec'

    Combustion.initialize! :all

    require 'rspec/rails'
    require 'capybara/rails'
    require 'factory_girl_rails'

```
combust

rackup
```
