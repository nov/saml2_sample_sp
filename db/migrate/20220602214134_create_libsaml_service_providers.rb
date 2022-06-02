class CreateLibsamlServiceProviders < ActiveRecord::Migration[6.1]
  def change
    create_table :libsaml_service_providers do |t|

      t.timestamps
    end
  end
end
