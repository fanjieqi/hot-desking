require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module HotDesking
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    config.generators do |g|
      g.template_engine :haml
    end

    config.i18n.available_locales = %w(af ar az be bg bn bs ca cs cy da de de-AT de-CH de-DE el el-CY en en-AU en-CA en-GB en-IE en-IN en-NZ en-US en-ZA en-CY,eo es es-419 es-AR es-CL es-CO es-CR es-EC es-ES es-MX es-NI es-PA es-PE es-US es-VE et eu fa fi fr fr-CA fr-CH fr-FR gl he hi hi-IN hr hu id is it it-CH ja ka km kn ko lb lo lt lv mk ml mn mr-IN ms nb ne nl nn oc or pa pl pt pt-BR rm ro ru sk sl sq sr sw ta te th tl tr tt ug ur uz vi wo zh-CN zh-HK zh-TW zh-YUE)
    config.i18n.default_locale = :en
    config.i18n.fallbacks = [:en]

    config.cache_store = :redis_store, 'redis://localhost:6379/0/cache', { expires_in: 1.week }
  end
end
