require 'rubygems'
require 'bundler/setup'
require 'aruba/cucumber'

Before do
  @aruba_timeout_seconds = 10
end