# Mobilized

## Installation

Add this to your Gemfile:

    gem 'mobilized'

and then run:

    bundle install

## Usage

### Controllers

mobilize all controllers:

    class ApplicationController < ActionController::Base
      mobilized
    end
    
mobilize a single controller:

    class BlogsController < ApplicationController
      mobilized
    end

this runs a before filter to set session[:is_mobile] to true or false

in your controller you can now use a couple of methods

    is_mobile? => (true|false)
  
    is_device?('ipad') => (true|false)

### Views

a couple helper methods are also exposed to the views:

    is_mobile? => (true|false)
    
    is_device?('ipad') => (true|false)


## Credits
Copyright 2011 by [Jon Buda](mailto:jon[dot]buda[at]gmail[dot]com), sponsored by [One Design Company](http://onedesigncompany.com/). It is based partly on [mobile-fu](https://github.com/brendanlim/mobile-fu). Released under the MIT License.