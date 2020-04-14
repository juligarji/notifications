# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# Create a new type
type = Type.new
type.name = "email"
type.description = "Email Notification"
type.save!

