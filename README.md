# sprockets-dotjs: doT.js in Sprockets

[doT.js](https://github.com/olado/doT) is an extremely fast JavaScript templating engine built for client side use and use
with node.js.  sprockets-dotjs makes it easy to use doT.js templates in Ruby web apps with [Sprockets](https://github.com/sstephenson/sprockets).
Using sprockets-dotjs, your JS templates will be automatically be along with the rest of your assets in Sprockets.  For example,
Ruby on Rails users can take advantage of this feature in the Asset Pipeline.  Precompiling assets on the server side saves
precious browser cycles that would otherwise be wasted compiling the assets after downloading them.

sprockets-dotjs requires Rails 3.0 or above.

# How to Use #

Simply include the gem in your Gemfile and then run bundle install

    gem 'sprockets-dotjs', :git => 'git://github.com/jamifsud/sprockets-dotjs.git'

Then create your doT.js template file in your assets/javascripts directory.  Your templates must end with
the extension .jst.djs in order to be processed as doT.js templates.  The templates will then be available
under the JST variable within the scope JST was created in (this is window by default, so window.JST or
simply JST will give you access to the templates).  For example:

app/assets/javascripts/templates/home.jst.djs:

    <h1>This is my homepage.  Hello {{= name }}</h1>

can be accessed with JST['templates/home']({ name: 'Joe' })

# Compatibility with other Templates #

sprockets-dotjs is compatible with other JS template libraries that compile correctly under the .jst
extension in Sprockets.  For instance, Sprockets supports EJS templates (based on ERB templates), and
sprockets-dotjs does not interfere with that support.

# Contributing #

This is a very bare bones plugin setup, so any suggestions or updates are greatly appreciated. Simply
submit a pull request to add to the code base.
