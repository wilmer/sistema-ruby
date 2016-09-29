json.extract! product, :id, :category_id, :nombre, :descripcion, :stock, :precio_compra, :precio_venta, :fecha_vencimiento, :created_at, :updated_at
json.url product_url(product, format: :json)