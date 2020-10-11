json.extract! investimento, :id, :carteira_id, :quantidade, :ticker, :created_at, :updated_at
json.url investimento_url(investimento, format: :json)
