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
  
  def onde_investir_puts
    @acoes = Ativo.all.where(:tipo_id => 3).order("ticker asc")
    @garantias = Investimento.all.where(:tipo_id => 2)
    @puts_abertas = DerivaMove.all.where(:estado_id => 1).where(:deriva_tipo_id => 2)
    @investimentos = Investimento.all
    @carteiras = Carteira.all
  end
end
