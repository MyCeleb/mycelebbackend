class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :stage_name
      t.string :artist_type
      t.string :image
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
