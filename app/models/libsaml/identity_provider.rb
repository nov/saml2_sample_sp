class Libsaml::IdentityProvider < ApplicationRecord
  include Saml::Provider

  validates :identifier,  presence: true, uniqueness: true
  validates :entity_id,   presence: true, uniqueness: true
  validates :sso_url,     presence: true
  validates :certificate, presence: true

  def self.find_by_entity_id(entity_id)
    find_by entity_id: entity_id
  end

  # NOTE: overwrite Saml::Provider#entity_id
  def entity_id
    read_attribute :entity_id
  end

  # NOTE: overwrite Saml::Provider#certificate
  def certificate(*args)
    OpenSSL::X509::Certificate.new read_attribute(:certificate)
  end
end
