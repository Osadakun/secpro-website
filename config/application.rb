require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Secpro
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1
    config.time_zone = 'Tokyo'
    config.active_record.time_zone_aware_types = [:datetime, :time]
    config.autoload_paths += Dir["#{config.root}/lib"]
    config.paths.add 'lib', eager_load: true  # これがないと本番環境で定期実行がエラーになるらしい
    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end

Rails.autoloaders.main.ignore(Rails.root.join('/app/lib/db/migrate'))