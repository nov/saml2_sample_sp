class Libsaml::IdentityProvider < ApplicationRecord
  include Saml::Provider

  validates :identifier,  presence: true, uniqueness: true
  validates :entity_id,   presence: true, uniqueness: true
  validates :sso_url,     presence: true
  validates :certificate, presence: true

  # NOTE: overwrite Saml::Provider#entity_id
  #  libsaml そのままの実装だと entity_descriptor にアクセスしようとするがめんどくさいので直接この class に entity_id を持たせておく。
  def entity_id
    read_attribute :entity_id
  end

  # NOTE: overwrite Saml::Provider#certificate
  #  libsaml そのままの実装だと key_descriptor にアクセスしようとするがめんどくさいので直接この class に entity_id を持たせておく。
  #  ただし key_name や use によって複数の certificates から特定の certificate を探すような実装をする場合はもう少し処理が必要。
  #  全 certificates を順々に署名検証に使ってどれか一つでも valid なら valid にする、みたいな処理をする場合は Saml::Provider#verify あたりを overwrite すればいける、かな？
  def certificate(*args)
    OpenSSL::X509::Certificate.new read_attribute(:certificate)
  end
end
