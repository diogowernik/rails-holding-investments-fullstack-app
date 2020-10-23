module ApplicationHelper
  # Imagem do main profile (imagem que o usuário verá quando logado)
  def avatar_url(user)
    gravatar_id = Digest::MD5::hexdigest(user.email).downcase
    "https://www.gravatar.com/avatar/#{gravatar_id}.jpg?d=identicon&s=150"
  end

# Resultados  
# 1 - Aberta
# 2 - Exercicio
# 3 - Pó
# 4 - Recompra
  
  def resultado_aberta(deriva_move)
    if deriva_move.estado_id == 1 
      deriva_move.valor * deriva_move.quantidade
    end
  end
  
  def resultado_po(deriva_move)
    if deriva_move.estado_id == 3 
      deriva_move.valor * deriva_move.quantidade
    end
  end
  
  def resultado_exercicio(deriva_move) #Neste caso é realizada uma interação com a tabela investimentos 
    if deriva_move.estado_id == 2
      if deriva_move.deriva_tipo_id == 2
        "Compra ( #{deriva_move.quantidade}  
        #{deriva_move.ativo.ticker} /
        #{number_with_precision(deriva_move.strike - deriva_move.valor, :precision => 2)})" 
      else
        "Venda ( #{deriva_move.quantidade}  
        #{deriva_move.ativo.ticker} /
        #{number_with_precision(deriva_move.strike - deriva_move.valor, :precision => 2)})" 
      end
    end
  end

  def resultado_recompra(deriva_move)
    if deriva_move.estado_id == 4
      (deriva_move.valor - deriva_move.valor_recompra) * deriva_move.quantidade
    end
  end
  
  def cor_resultado_recompra(deriva_move)
    if deriva_move.estado_id == 4
      rr = (deriva_move.valor - deriva_move.valor_recompra) * deriva_move.quantidade
      if rr > 0
        "primary"
      else
        "danger"
      end
    end
  end

end
