Rails.application.routes.draw do

  scope ":locale", locale: /#{I18n.available_locales.join("|")}/ do
    root 'home_page#index'
    get 'home_page/show/:hash', to: 'home_page#show', as: 'home_page_show'

    get 'accounts/index'
    get 'accounts/show'

    get 'assets/index'
  end

  get '*path', to: redirect("/#{I18n.default_locale}/%{path}"), constraints: lambda { |req| !req.path.starts_with? "/#{I18n.default_locale}/" }
  get '/', to: redirect("/#{I18n.default_locale}")
end
