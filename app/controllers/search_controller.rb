class SearchController < ApplicationController
  def index
    house = params[:house]
    @members = SearchResults.new.members(house)
  end
end
