# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
FlickRaw.api_key = ENV["api_key"]
FlickRaw.shared_secret = ENV["secret"]
