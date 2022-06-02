class CreateLibsamlIdentityProviders < ActiveRecord::Migration[6.1]
  def change
    create_table :libsaml_identity_providers do |t|

      t.timestamps
    end
  end
end
