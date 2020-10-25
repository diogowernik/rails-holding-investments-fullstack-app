class PagesController < ApplicationController
  def home
  end
  
  def seed
    @ativo_moves = AtivoMove.all
    @ativos = Ativo.all
    @carteiras = Carteira.all
    @corretoras = Corretora.all
    @deriva_moves = DerivaMove.all
    @derivativos = Derivativo.all
    @estados = Estado.all
    @investimentos = Investimento.all
    @tipos = Tipo.all
    @vencimentos = Vencimento.all
  end
  
  def for_google
    @calls_abertas = DerivaMove.all.where(:estado_id => 1).where(:deriva_tipo_id => 1)
    @puts_abertas = DerivaMove.all.where(:estado_id => 1).where(:deriva_tipo_id => 2)
  end
end
