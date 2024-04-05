class SearchController < ApplicationController
  def index
    nation = params[:nation].gsub("+", ' ')
    # require 'pry'; binding.pry
    facade = AirBenderFacade.new(nation) 
    @nation_members = facade.get_nation_members
    # require 'pry'; binding.pry
  end
end