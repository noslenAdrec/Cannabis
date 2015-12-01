json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :nombre, :apellido, :fechaNacimiento, :comuna
  json.url usuario_url(usuario, format: :json)
end
