class CreateAppPerfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :app_perfiles do |t|
      t.string :email

      t.timestamps
    end
    add_index :app_perfiles, :email
  end
end
