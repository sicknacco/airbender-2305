class SearchController < ApplicationController
  def index
    @ppl = CharacterFacade.ppl_by_nation(params[:nation])
    @nation = params[:nation]
  end
end