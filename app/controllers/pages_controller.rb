class PagesController < ApplicationController
  def home
  end
  
  def seed
    @ativo_moves = AtivoMove.all
  end
end
