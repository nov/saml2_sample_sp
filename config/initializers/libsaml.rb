Rails.application.reloader.to_prepare do
  Saml::Config.register_store :libsaml_idps, Libsaml::IdentityProvider
end