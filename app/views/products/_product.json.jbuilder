json.extract! product, :id, :category_id, :nombre, :cantidad, :stock, :medida, :fecha, :created_at, :updated_at
json.url product_url(product, format: :json)