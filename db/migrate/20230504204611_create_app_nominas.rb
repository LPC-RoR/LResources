class CreateAppNominas < ActiveRecord::Migration[7.0]
  def change
    create_table :app_nominas do |t|
      t.string :app_nomina
      t.string :email

      t.timestamps
    end
    add_index :app_nominas, :email
  end
end
