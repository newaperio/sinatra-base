ENV["RACK_ENV"] ||= "development"

require 'rubygems'
require 'bundler/setup'

Bundler.require(:default, ENV['RACK_ENV'])

Dir.glob(File.join(File.expand_path('../../{models,helpers}', __FILE__), '*.rb'), &method(:require))

require File.expand_path('../../app', __FILE__)