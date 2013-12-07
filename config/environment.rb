# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Politreview::Application.initialize!

Time::DATE_FORMATS[:ru_datetime] = "%d/%m/%Y"
