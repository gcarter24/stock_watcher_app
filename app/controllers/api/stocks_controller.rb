class Api::StocksController < ApplicationController
  def index
    @stocks = Stock.all
    render "index.json.jb"
  end

  def show
    @stock = Stock.find_by(id: params[:id])
    render "show.json.jb"
  end
end
