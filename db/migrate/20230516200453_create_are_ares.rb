class CreateAreAres < ActiveRecord::Migration[7.0]
  def change
    create_table :are_ares do |t|
      t.integer :jefatura_id
      t.integer :subordinada_id

      t.timestamps
    end
    add_index :are_ares, :jefatura_id
    add_index :are_ares, :subordinada_id
  end
end
