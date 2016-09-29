class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :category, index: true, foreign_key: true
      t.string :nombre
      t.string :descripcion
      t.float :stock
      t.float :precio_compra
      t.float :precio_venta
      t.date :fecha_vencimiento

      t.timestamps null: false
    end
  end
end
