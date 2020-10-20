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
end
