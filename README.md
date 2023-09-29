** This is a fork because the original have not been updated for a long time **

# capistrano scm static

It is a plugin for capistrano scm to deploy static sites.


# Installation

## Gemfile.rb

`gem 'capistrano-scm-static2', '~> 0.0.4', require: false`

## Capfile

```
require 'capistrano/scm/static'
install_plugin Capistrano::SCM::Static
```

## deploy.rb

`set :dist, 'path to your static template compilation folder'`

For eg,

set :dist, 'build' # in case for reactjs


set :dist, 'dist' # in case for vuejs
