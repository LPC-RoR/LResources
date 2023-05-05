class CreateAppEmpresas < ActiveRecord::Migration[7.0]
  def change
    create_table :app_empresas do |t|
      t.string :app_empresa
      t.string :rut

      t.timestamps
    end
    add_index :app_empresas, :rut
  end
end
