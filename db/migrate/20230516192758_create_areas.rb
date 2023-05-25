class CreateAreas < ActiveRecord::Migration[7.0]
  def change
    create_table :areas do |t|
      t.string :area
      t.string :ownr_class
      t.integer :ownr_id
      t.integer :app_empresa_id

      t.timestamps
    end
    add_index :areas, :ownr_class
    add_index :areas, :ownr_id
    add_index :areas, :app_empresa_id
  end
end
