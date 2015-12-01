json.array!(@cannabis) do |cannabi|
  json.extract! cannabi, :id, :sativa, :indica, :interior, :exterior, :usuario_id
  json.url cannabi_url(cannabi, format: :json)
end
