class Libsaml::IdentityProvider < ApplicationRecord
  validates :identifier,  presence: true, uniqueness: true
  validates :entity_id,   presence: true, uniqueness: true
  validates :sso_url,     presence: true
  validates :certificate, presence: true
end
