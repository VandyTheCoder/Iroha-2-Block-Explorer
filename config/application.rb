require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Iroha2BlockExplorer
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    config.generators do |g|
      g.assets  false
      g.helper false
      g.stylesheets false
      g.test_framework  false
    end

    config.assets.enabled = true
    config.assets.paths << Rails.root.join('app', 'assets', 'fonts')
    config.assets.precompile += %w( .svg .eot .woff .ttf)

    config.time_zone = 'Bangkok'
    config.active_record.default_timezone = :local

    I18n.default_locale = :en
    I18n.available_locales = [:en, :km]

    config.session_store :cookie_store, key: "iroha_block_explorer_session_#{Rails.env}"
  end
end
