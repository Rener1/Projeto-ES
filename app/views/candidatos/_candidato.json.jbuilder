json.extract! candidato, :id, :nome, :email, :telefone, :created_at, :updated_at
json.url candidato_url(candidato, format: :json)
