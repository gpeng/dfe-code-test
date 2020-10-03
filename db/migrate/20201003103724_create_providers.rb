class CreateProviders < ActiveRecord::Migration[6.0]
  def change
    create_table :providers do |t|
      t.string :name
      t.string :address_1
      t.string :address_2
      t.string :address_3
      t.string :postcode
      t.timestamps
    end
  end
end
