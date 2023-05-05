class CreateHLinks < ActiveRecord::Migration[7.0]
  def change
    create_table :h_links do |t|
      t.string :h_link
      t.string :link

      t.timestamps
    end
  end
end
