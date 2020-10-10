json.extract! atividade, :id, :codigo, :carteira_id, :valor, :data_negociada, :quantidade, :movimento, :tipo_id, :ativo_id, :created_at, :updated_at
json.url atividade_url(atividade, format: :json)
