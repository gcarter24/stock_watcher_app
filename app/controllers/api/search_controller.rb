class Api::SearchController < ApplicationController
  def search
    # @stocks = Stock.search_by_term(params[:query])
    @stock = Stock.find_by(name: params[:name])
    render "index.json.jb"
  end
end
