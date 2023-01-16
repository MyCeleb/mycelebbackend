class CreateRates < ActiveRecord::Migration[7.0]
  def change
    create_table :rates do |t|
      t.string :description
      t.string :price
      t.references :profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
