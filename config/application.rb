require_relative 'boot'
require 'rails/all'
require '../spec/rails_helper.rb'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BlogAppRails
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    # config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    config.time_zone = "Central Time (US & Canada)"
    config.eager_load_paths << Rails.root.join("extras")
  end
  config.generators do |g|
    g.test_framework :rspec,
                     fixtures: false,
                     view_specs: false,
                     helper_specs: false,
                     routing_specs: false,
                     controller_specs: false,
                     request_specs: false
    g.factory_bot dir: 'spec/factories'
  end
end
