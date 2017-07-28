# Load the Rails application.
require_relative 'application'
require 'resolv-replace'

# Initialize the Rails application.
Rails.application.initialize!
FlickRaw.api_key = ENV["api_key"]
FlickRaw.shared_secret = ENV["secret"]
