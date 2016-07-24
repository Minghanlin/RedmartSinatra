require 'rubygems'
require 'bundler'
Bundler.require

# LOAD MODEL
require './models/user'

# LOAD THE APP
require './app'

# ALLOW DELETE AND PUT REQUEST
use Rack::MethodOverride
run RedmartSinatraApp
