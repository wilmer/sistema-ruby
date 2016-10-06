json.extract! client, :id, :nombre, :apellidos, :rut, :direccion, :telefono, :created_at, :updated_at
json.url client_url(client, format: :json)