class CreateLibsamlIdentityProviders < ActiveRecord::Migration[6.1]
  def change
    create_table :libsaml_identity_providers do |t|
      t.string :identifier,  null: false
      t.string :entity_id,   null: false
      t.string :sso_url,     null: false
      t.text   :certificate, null: false
      t.timestamps
      t.index :identifier, unique: true
      t.index :entity_id,  unique: true
    end
  end
end
