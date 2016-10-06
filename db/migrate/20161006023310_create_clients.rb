class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :nombre
      t.string :apellidos
      t.string :rut
      t.string :direccion
      t.integer :telefono

      t.timestamps null: false
    end
  end
end
