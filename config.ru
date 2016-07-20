require 'rubygems'
require 'bundler'
Bundler.require

#this is the model
require './models/user'

#This is controller
require './app'

#class refers to class name in app.rb
run RedmartSinatraApp
